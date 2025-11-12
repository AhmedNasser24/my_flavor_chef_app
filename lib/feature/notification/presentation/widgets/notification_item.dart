import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/themes/app_font_style.dart';
import '../../../../core/utils/themes/app_images.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.isread});
  final bool isread;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isread ? null : AppColors.black11,
          border: isread
              ? const Border(
                  bottom: BorderSide(color: AppColors.whiteE7, width: 1.0),
                )
              : null,
        ),
        child: Row(
          children: [
            Image.asset(AppImages.imagesNewOrderIcon),
            const Gap(10),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'طلب جديد بانتظارك',
                          style: AppFontStyle.regular14White,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Gap(10),
                      Text('منذ 10 دقائق', style: AppFontStyle.light14WhiteE7),
                    ],
                  ),
                  Gap(10),
                  Text(
                    'لديك طلب جديد من العميل محمد علي. الرجاء التحقق من التفاصيل في قسم الطلبات.',
                    style: AppFontStyle.regular11White,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
