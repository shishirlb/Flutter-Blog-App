import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/colors.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenBrightness = mediaQuery.platformBrightness;
    final isDarkMode = screenBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? blogSecondaryColor : blogPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(blogDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(blogWelcomePageImg), height: screenHeight * 0.6),
            Column(
              children: [
                Text(blogWelcomeScreenTitle, style: Theme.of(context).textTheme.headline5),
                Text(blogWelcomeScreenSubTitle, style: Theme.of(context).textTheme.bodyText2, textAlign: TextAlign.center,),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      blogLogin.toUpperCase()
                    )
                  )
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {}, 
                    child: Text(
                      blogRegister.toUpperCase()
                      )
                    )
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}