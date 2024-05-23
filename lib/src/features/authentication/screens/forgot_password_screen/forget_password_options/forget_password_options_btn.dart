import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.width,
    required this.onTap,
  });

  final IconData icon;
  final String title, subTitle;
  final double width;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.tertiary),
        child: Row(
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
