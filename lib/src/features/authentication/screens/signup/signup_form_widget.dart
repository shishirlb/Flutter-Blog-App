import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: blogFormHeight),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(blogFullName),
                prefixIcon: Icon(Icons.person_outline_rounded)
              ),
            ),
            const SizedBox(height: blogFormHeight),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(blogEmail),
                prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            const SizedBox(height: blogFormHeight),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(blogPhoneNo),
                prefixIcon: Icon(Icons.phone)
              ),
            ),
            const SizedBox(height: blogFormHeight),
            TextFormField(
              decoration: InputDecoration(
                label: const Text(blogPassword),
                prefixIcon: const Icon(Icons.fingerprint),
                suffixIcon: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.remove_red_eye_sharp)
                )
              ),
            ),
            const SizedBox(height: blogFormHeight),
            TextFormField(
              decoration: InputDecoration(
                label: const Text(blogConfirmPassword),
                prefixIcon: const Icon(Icons.fingerprint),
                suffixIcon: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.remove_red_eye_sharp)
                )
              ),
            ),
            const SizedBox(height: blogFormHeight),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {}, 
                child: Text(blogSignUp.toUpperCase())
              ),
            )
          ],
        )
      ),
    );
  }
}