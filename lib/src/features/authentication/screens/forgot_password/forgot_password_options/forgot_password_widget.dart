import 'package:flutter/material.dart';

class ForgotPasswordWidgets extends StatelessWidget {
  const ForgotPasswordWidgets({
    super.key,
    required this.title,
    required this.subTitle,
    required this.btnIcon,
    required this.onTap
  });

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200
        ),
        child: Row(
          children: [
            Icon(btnIcon, size: 50),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline6),
                Text(subTitle, style: Theme.of(context).textTheme.bodyMedium),
              ],
            )
          ]
        ),
      ),
    );
  }
}