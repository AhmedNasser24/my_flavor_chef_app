
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  const CustomLinearProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("4 من أصل 5 خطوات مكتملة." , style : AppFontStyle.regular16WhiteFA),
              Spacer(),
              Text("50%" , style : AppFontStyle.regular16WhiteFA),
            ],
          ),
          Gap(12),
          Transform.rotate(
            angle: 3.14,
            child: LinearProgressIndicator(
              value: 0.5,
              backgroundColor: AppColors.white,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
              minHeight: 12,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}