import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/feature/home/presentation/widgets/cancel_order_button.dart';
import 'package:chef_app/feature/home/presentation/widgets/food_details_image.dart';
import 'package:chef_app/feature/home/presentation/widgets/preparation_completed_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodDetailView extends StatelessWidget {
  const FoodDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FoodDetailsImage(),
              Gap(10),
              Align(
                alignment: context.locale == Locale('ar')
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Text(
                  LocaleKeys.food_details_title.tr(),
                  style: AppFontStyle.bold20White,
                ),
              ),
              Gap(10),
              Align(
                alignment: context.locale == Locale('ar')
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Text(
                  LocaleKeys.food_details_subtitle.tr(),
                  style: AppFontStyle.regular14grey,
                ),
              ),
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(child: PreparationCompletedButton()),
                    Gap(10),
                    Expanded(child: CancelOrderButton()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: AppColors.background,
      title: Text('البرجر', style: AppFontStyle.regular16WhiteE7),
      foregroundColor: AppColors.primary,
    );
  }
}
