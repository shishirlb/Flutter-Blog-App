import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/login/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(blogDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  imageHeight: 0.2,
                  image: blogWelcomePageImg,
                  title: blogLoginScreenTitle,
                  subTitle: blogLoginScreenSubTitle,
                ),
                LoginForm(),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}