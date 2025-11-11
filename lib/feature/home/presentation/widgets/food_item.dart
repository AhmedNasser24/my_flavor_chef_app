import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:chef_app/feature/home/presentation/widgets/begin_prepare_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 170,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: AppColors.secondary, width: 1),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(AppImages.imagesFood, fit: BoxFit.cover)),
          Gap(8),
          Text("ستيك", style: AppFontStyle.bold20WhiteFA),
          Gap(8),
          BeginPrepareButton(),
        ],
      ),
    );
  }
}
