import 'package:flutter/material.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({
    Key? key,
    this.text,
    this.hasError = false,
    required this.isChecked,
    this.onTap,
  }) : super(key: key);

  final bool isChecked;
  final bool hasError;
  final Widget? text;
  final VoidCallback? onTap;

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });

        widget.onTap?.call();
      },
      behavior: HitTestBehavior.translucent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            value: _isSelected,
            onChanged: (bool? value) {},
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            checkColor: Colors.red,
            activeColor: Colors.transparent,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: widget.text ?? const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
