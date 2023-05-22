import 'package:design_system/foundations/foundations.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget({
    Key? key,
    this.onEditingComplete,
    this.onSubmitted,
    this.textEditingController,
    this.suffixIcon,
    this.hintText,
    this.onChanged,
  }) : super(
          key: key,
        );

  final String? hintText;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;
  final Widget? suffixIcon;
  final TextEditingController? textEditingController;

  @override
  CustomTextFieldWidgetState createState() => CustomTextFieldWidgetState();
}

class CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  late final TextEditingController _textEditingController;
  bool _showRightIcon = false;

  @override
  void initState() {
    _textEditingController =
        widget.textEditingController ?? TextEditingController();
    super.initState();
  }

  void _tapSuffixIcon() {
    setState(() {
      _textEditingController.text = '';
      widget.onChanged?.call('');
    });
  }

  InputDecoration get _defaultInputDecoration => InputDecoration(
        hintText: widget.hintText ?? 'Search',
        hintStyle: AppTextTheme.body3,
        fillColor: AppColor.background,
        filled: true,
        contentPadding: const EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(
          AppIcons.search,
          size: 24,
          color: AppColor.primaryColor,
        ),
        suffixIcon: _showRightIcon
            ? widget.suffixIcon ??
                GestureDetector(
                  onTap: _tapSuffixIcon,
                  child: const Icon(
                    AppIcons.close,
                    color: AppColor.primaryColor,
                  ),
                )
            : const SizedBox.shrink(),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: _textEditingController.text.isEmpty
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 12,
                    spreadRadius: 3,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  )
                ])
          : BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 12,
                  spreadRadius: 3,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                )
              ],
            ),
      child: TextFormField(
        controller: _textEditingController,
        onChanged: (value) {
          setState(() {
            _showRightIcon = value.isNotEmpty;
          });

          widget.onChanged?.call(value);
        },
        onEditingComplete: widget.onEditingComplete,
        onFieldSubmitted: widget.onSubmitted,
        decoration: _defaultInputDecoration,
      ),
    );
  }
}
