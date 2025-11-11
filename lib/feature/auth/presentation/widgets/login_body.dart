import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60 , bottom: 120),
              child: Image.asset(AppImages.imagesAppLogo),
            ),
            Align(
              alignment: context.locale == Locale('en') ? Alignment.centerLeft : Alignment.centerRight,
              child: Text(LocaleKeys.login_title.tr(), style: AppFontStyle.bold20White)),
            Gap(10),
            Align(
              alignment: context.locale == Locale('en') ? Alignment.centerLeft : Alignment.centerRight,
              child: Text(
                LocaleKeys.login_subtitle.tr(),
                style: AppFontStyle.regular16WhiteE7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
