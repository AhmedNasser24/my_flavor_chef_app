import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:chef_app/core/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: LocaleKeys.password.tr(),
      prefixIcon: Image.asset(AppImages.imagesLockIcon),
      obscureText: isObscure,
      suffixIcon: IconButton(
        icon: isObscure ? Image.asset(AppImages.imagesInvisibleEyeIcon) : Image.asset(AppImages.imagesVisibleEyeIcon),
        onPressed: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
      ),
    );
  }
}