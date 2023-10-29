import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/forgot_password/forgot_password_email/forgot_password_mail.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/forgot_password/forgot_password_options/forgot_password_widget.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context, 
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(blogDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(blogForgotPasswordSubTitle, style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 10),
            ForgotPasswordWidgets(
              title: blogEmail,
              subTitle: blogResetViaEmail,
              btnIcon: Icons.email_outlined,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgotPasswordMailScren());
              },
            ),
            const SizedBox(height: 10),
            ForgotPasswordWidgets(
              title: blogPhoneNo,
              subTitle: blogResetViaPhone,
              btnIcon: Icons.phone,
              onTap: () {},
            ),
          ],
        ),
      )
    );
  }
}