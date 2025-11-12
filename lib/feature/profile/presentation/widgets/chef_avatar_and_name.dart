
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/themes/app_images.dart';

class ChefAvatarAndName extends StatelessWidget {
  const ChefAvatarAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(AppImages.imagesChefAvatar),
          ),
          Gap(10) ,
          Text("الشيف سامر عبد الله" ,
              style: AppFontStyle.semiBold16WhiteFA),
          Text("@WK-2045" , style : AppFontStyle.medium12WhiteE7),    
        ],
      ),
    );
  }
}