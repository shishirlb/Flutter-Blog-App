import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(blogWelcomePageImg), 
          height: screenSize.height * 0.2
        ),
        Text(
          blogLoginScreenTitle, 
          style: Theme.of(context).textTheme.headlineSmall
        ),
        Text(
          blogLoginScreenSubTitle, 
          style: Theme.of(context).textTheme.bodyLarge
        ),
      ],
    );
  }
}