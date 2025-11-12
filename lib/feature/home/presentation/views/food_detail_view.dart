import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/widgets/back_arrow_button.dart';
import 'package:chef_app/feature/home/presentation/widgets/cancel_order_button.dart';
import 'package:chef_app/feature/home/presentation/widgets/custom_linear_progress_indicator.dart';
import 'package:chef_app/feature/home/presentation/widgets/custom_order_information_expansion_tile.dart';
import 'package:chef_app/feature/home/presentation/widgets/food_details_image.dart';
import 'package:chef_app/feature/home/presentation/widgets/preparation_completed_button.dart';
import 'package:chef_app/feature/home/presentation/widgets/preperation_steps_extension_tile.dart';
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
              const FoodDetailsImage(),
              const Gap(10),
              Align(
                alignment: context.locale == const Locale('ar')
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    LocaleKeys.food_details_title.tr(),
                    style: AppFontStyle.bold20White,
                  ),
                ),
              ),
              const Gap(10),
              Align(
                alignment: context.locale == const Locale('ar')
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    LocaleKeys.food_details_subtitle.tr(),
                    style: AppFontStyle.regular14grey,
                  ),
                ),
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomOrderInformationExpansionTile(),
              ),
              const Gap(10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: PreperationStepsExpansionTile(),
              ),
              const Gap(20),
              const Gap(10),
              const Divider(
                height: 20,
                thickness: 0.5,
                color: Color(0xFFDEDEDE),
              ),
              const CustomLinearProgressIndicator(),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(child: PreparationCompletedButton()),
                    Gap(10),
                    Expanded(child: CancelOrderButton()),
                  ],
                ),
              ),
              const Gap(30),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: AppColors.background,
      title: const Text('البرجر', style: AppFontStyle.regular16WhiteE7),
      leading: const BackArrowButton(),
    );
  }
}

