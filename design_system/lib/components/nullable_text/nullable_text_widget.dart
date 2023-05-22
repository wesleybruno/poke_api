import 'package:flutter/material.dart';

class NullableTextWidget extends StatelessWidget {
  const NullableTextWidget({
    this.text,
    super.key,
    this.style,
  });

  final String? text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return text == null
        ? const SizedBox.shrink()
        : Text(
            text!,
            style: style,
          );
  }
}
