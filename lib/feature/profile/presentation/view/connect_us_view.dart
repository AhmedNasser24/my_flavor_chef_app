import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/widgets/back_arrow_button.dart';
import 'package:chef_app/feature/profile/presentation/widgets/social_media_button_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/address.dart';
import '../widgets/phone.dart';
import '../widgets/whats_app.dart';

class ConnectUsView extends StatelessWidget {
  const ConnectUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          LocaleKeys.connect_with_us.tr(),
          style: AppFontStyle.regular16WhiteFA,
        ),
        leading: const BackArrowButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              Text(
                LocaleKeys.connect_us_title.tr(),
                style: AppFontStyle.semiBold18White,
              ),
              const Gap(10),
              Text(
                LocaleKeys.connect_us_subtitle.tr(),
                style: AppFontStyle.regular14grey,
              ),
              const Gap(40),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.primary, width: 1),
                ),
                child: const Column(
                  spacing: 10,
                  children: [Phone(), Address(), WhatsApp()],
                ),
              ),
              const Gap(10),
              const SocialMediaButtonIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
