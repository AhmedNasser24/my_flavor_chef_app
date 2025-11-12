import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/themes/app_colors.dart';

class CustomOrderInformationExpansionTile extends StatelessWidget {
  const CustomOrderInformationExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black11, // Header background
        borderRadius: BorderRadius.circular(16),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent, // remove divider line
        ),
        child: ExpansionTile(
          title: Text(
            LocaleKeys.order_information.tr(),
            style: AppFontStyle.semiBold16WhiteFA,
            // textAlign: TextAlign.right,
          ),
          iconColor: AppColors.white,
    
          collapsedIconColor: AppColors.white,
          tilePadding: const EdgeInsets.all(8),
          childrenPadding: EdgeInsets.zero, // remove default padding
          backgroundColor: Colors.transparent, // no extra bg overlay
          collapsedBackgroundColor: Colors.transparent,
    
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 20,
              ),
              decoration: const BoxDecoration(
                color: AppColors.white, // Children background
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: const Text(
                "ابدأ بالدخول إلى التطبيق كزائر لتصفح الألعاب، ثم أنشئ حسابك واشترك في العضوية حتى تتمكن من اختيار لعبة والبدء في اللعب، بعد ذلك استكشف الألعاب المتاحة، اختر لعبتك المفضلة واضغط ابدأ اللعب، ويمكنك متابعة تقدمك وتحدي أصدقائك من خلال حسابك.",
                style: AppFontStyle.regular12Black2A,
                // textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
