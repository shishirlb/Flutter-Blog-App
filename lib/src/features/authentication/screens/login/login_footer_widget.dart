import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(height: blogFormHeight),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(googleLogo), width: 30),
            onPressed: () {}, 
            label: const Text(blogSignInWithGoogle)
          ),
        ),
        const SizedBox(height: blogFormHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(blogDontHaveAnAccount),
            TextButton(
              onPressed: () {
                Get.offAll(() => const SignUpScreen());
              }, 
              child: Text(blogRegister.toUpperCase())
            ),
          ],
        )
      ],
    );
  }
}