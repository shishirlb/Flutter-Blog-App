import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/login/login_header_widget.dart';

class ForgotPasswordMailScren extends StatelessWidget {
  const ForgotPasswordMailScren({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(blogDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: blogDefaultSize),
                const FormHeaderWidget(
                  imageHeight: 0.4,
                  image: blogForgotPasswordImg,
                  title: blogResetViaEmailTitle,
                  subTitle: blogResetViaEmailDescription,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: blogDefaultSize),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(blogEmail),
                          hintText: blogEmail,
                          prefixIcon: Icon(Icons.mail_outline_outlined)
                        ),
                      ),
                      const SizedBox(height: blogDefaultSize),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {}, 
                          child: const Text(blogSubmit)
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}