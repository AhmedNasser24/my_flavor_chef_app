import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:flutter/material.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(AppImages.imagesBackArrow),
      ),
    );
  }
}
