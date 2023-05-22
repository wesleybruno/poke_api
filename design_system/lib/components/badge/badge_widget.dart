import 'package:design_system/foundations/foundations.dart';
import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final Color color;
  final Color? textColor;
  final String text;
  final VoidCallback? onTap;

  const BadgeWidget({
    Key? key,
    required this.color,
    required this.text,
    this.onTap,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //height: 20,
        constraints: const BoxConstraints(
          maxHeight: 20
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: AppTextTheme.subTitle3.copyWith(
            color: textColor,
            leadingDistribution: TextLeadingDistribution.even,
          ),
        ),
      ),
    );
  }
}
