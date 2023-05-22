import 'package:design_system/foundations/foundations.dart';
import 'package:flutter/material.dart';

class RadioItemWidget<T> extends StatefulWidget {
  const RadioItemWidget({
    super.key,
    required this.isSelected,
    required this.text,
    required this.groupValue,
    required this.onSelect,
  });

  final bool isSelected;
  final Widget text;
  final T groupValue;
  final ValueChanged<T> onSelect;

  @override
  State<RadioItemWidget> createState() => _RadioItemWidgetState();
}

class _RadioItemWidgetState extends State<RadioItemWidget> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile<int>(
      value: 1,
      groupValue: widget.groupValue,
      onChanged: widget.onSelect,
      activeColor: Colors.transparent,
      title: widget.text,
      controlAffinity: ListTileControlAffinity.trailing,
      secondary: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColor.primaryColor,
            width: 2.0,
          ),
          color: widget.isSelected ? AppColor.primaryColor : AppColor.background,
        ),
      ),
    );
  }
}
