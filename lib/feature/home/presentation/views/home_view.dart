import 'dart:developer';

import 'package:chef_app/core/extenstion/media_query_extension.dart';
import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/feature/home/presentation/widgets/home_app_bar.dart';
import 'package:chef_app/feature/home/presentation/widgets/list_of_food_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    log(context.screenWidth.toString());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:  16.0),
          child: CustomScrollView(
            
            slivers: [
              SliverToBoxAdapter(child: HomeAppBar()),
              SliverGap(20),
              SliverToBoxAdapter(
                child: Text(
                  LocaleKeys.home_title.tr(),
                  style: AppFontStyle.bold20White,
                ),
              ),
              SliverGap(10),
              SliverToBoxAdapter(
                child: Text(
                  LocaleKeys.home_subtitle.tr(),
                  style: AppFontStyle.regular16WhiteE7,
                ),
              ),
              SliverGap(10),
              
              ListOfFoodItem(),
              SliverGap(20),
            ],
          ),
        ),
      ),
    );
  }
}
