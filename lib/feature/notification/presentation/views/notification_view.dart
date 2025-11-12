import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/widgets/back_arrow_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../widgets/notification_item.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return NotificationItem(isread: index >= 3);
          },
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        LocaleKeys.Notifications.tr(),
        style: AppFontStyle.regular16WhiteFA,
      ),
      backgroundColor: AppColors.background,
      leading: const BackArrowButton(),
    );
  }
}
