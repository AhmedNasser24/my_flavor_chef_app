import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/utils/themes/app_colors.dart';

class PreperationStepsExpansionTile extends StatelessWidget {
  const PreperationStepsExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent, // Header background
        borderRadius: BorderRadius.circular(16),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent, // remove divider line
          splashColor: Colors.transparent,
        ),
        child: ExpansionTile(
          title: Text(
            LocaleKeys.preparation_steps.tr(),
            style: AppFontStyle.semiBold16WhiteFA,
            // textAlign: TextAlign.right,
          ),
          iconColor: AppColors.white,

          collapsedIconColor: AppColors.white,
          tilePadding: const EdgeInsets.all(8),
          childrenPadding: EdgeInsets.symmetric(
            horizontal: 8,
          ), // remove default padding
          backgroundColor: Colors.transparent, // no extra bg overlay
          collapsedBackgroundColor: Colors.transparent,

          children: [
            for (int i = 0; i < 4; i++) ...{
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: AppColors.black11, // Children background
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Text(
                  LocaleKeys.step.tr(args: [(i + 1).toString()]),
                  style: AppFontStyle.regular14WhiteFA,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: AppColors.white, // Children background
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "شكّل اللحم إلى قرص متساوٍ السماكة.تأكد من عدم الضغط الزائد حتى لا يفقد العصارة.",
                      style: AppFontStyle.regular12Black2A,
                      // textAlign: TextAlign.right,
                    ),
                    if (i % 2 == 0) ...{
                      Gap(10),
                      CustomTimer(),
                    },
                  ],
                ),
              ),
            },
          ],
        ),
      ),
    );
  }
}

