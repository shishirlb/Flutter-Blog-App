import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../models/on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(blogDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: screenSize.height * 0.2),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headline5),
              Text(model.subTitle, textAlign: TextAlign.center)
            ],
          ),
          Text(model.counterText, style: Theme.of(context).textTheme.headline6),
          SizedBox(height: 50.0)
        ],
      ),
    );
  }
}