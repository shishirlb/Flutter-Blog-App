import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/forgot_password/forgot_password_options/forgot_password_modal_bottom_sheet.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: blogFormHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: blogEmail,
                hintText: blogEmail,
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: blogFormHeight),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline_sharp),
                labelText: blogPassword,
                hintText: blogPassword,
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.remove_red_eye_sharp)
                )
              ),
            ),
            const SizedBox(height: blogFormHeight),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgotPasswordScreen.buildShowModalBottomSheet(context);
                }, 
                child: const Text(blogForgotPassword)
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {}, 
                child: Text(blogLogin.toUpperCase())
              ),
            )
          ],
        ),
      )
    );
  }
}

