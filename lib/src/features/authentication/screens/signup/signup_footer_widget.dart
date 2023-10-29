import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
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
            label: Text(blogSignInWithGoogle.toUpperCase())
          ),
        ),
        const SizedBox(height: blogFormHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(blogAlreadyHaveAnAccount),
            TextButton(
              onPressed: () {}, 
              child: Text(blogLogin.toUpperCase())
            ),
          ],
        )
      ],
    );
  }
}