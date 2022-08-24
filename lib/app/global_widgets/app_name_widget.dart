import 'package:consultoria/app/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class AppNameWidget extends StatelessWidget {
  final Color? titleColor;
  final double textSize;

  const AppNameWidget({
    Key? key,
    this.titleColor,
    this.textSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: textSize,
        ),
        children: [
          TextSpan(
            text: 'Miranda',
            style: TextStyle(
              color: titleColor ?? CustomColors.customSwatchColor,
            ),
          ),
          TextSpan(
            text: 'X',
            style: TextStyle(
              color: CustomColors.customContrastColor,
            ),
          ),
        ],
      ),
    );
  }
}
