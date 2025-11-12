import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/themes/app_colors.dart';
import '../../../../core/utils/themes/app_font_style.dart';
import '../../../../core/utils/themes/app_images.dart';

class Address extends StatelessWidget {
  const Address({
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
          Image.asset(AppImages.imagesLocationIcon),
          Gap(10),
          Expanded(
            child: Text(
              "بغداد, محطة القطار, شارع2054",
              style: AppFontStyle.regular16WhiteFA,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}