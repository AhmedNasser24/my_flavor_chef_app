import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/themes/app_colors.dart';
import '../../../../core/utils/themes/app_images.dart';

class Phone extends StatelessWidget {
  const Phone({
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
          Image.asset(AppImages.imagesPhoneIcon),
          const Gap(10),
          const Expanded(
            child: Text(
              "0777222854465",
              style: AppFontStyle.regular16WhiteFA,
                overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
