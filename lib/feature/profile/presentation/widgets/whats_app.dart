import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/languages/locale_keys.g.dart';
import '../../../../core/utils/themes/app_colors.dart';
import '../../../../core/utils/themes/app_font_style.dart';
import '../../../../core/utils/themes/app_images.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.black11,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset(AppImages.imagesWhatsapp1Icon),
          const Gap(10),
          Expanded(
            child: Text(
              LocaleKeys.whatsapp.tr(),
              style: AppFontStyle.regular16WhiteFA,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
