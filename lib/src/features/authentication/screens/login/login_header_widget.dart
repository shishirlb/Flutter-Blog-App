import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    this.imageColor,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.imageHeight,
    this.crossAxisAlignment = CrossAxisAlignment.start, 
    this.textAlign
  });

  final Color? imageColor;
  final double imageHeight;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image), height: screenSize.height * imageHeight),
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        Text(subTitle, textAlign: textAlign, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}