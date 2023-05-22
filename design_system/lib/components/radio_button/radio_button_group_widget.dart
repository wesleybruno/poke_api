import 'package:design_system/components/radio_button/radio_button_widget.dart';
import 'package:flutter/material.dart';

class RadioButtonGroupWidget extends StatefulWidget {
  const RadioButtonGroupWidget({
    Key? key,
    required this.itens,
  }) : super(key: key);

  final List<RadioItemWidget> itens;

  @override
  State<RadioButtonGroupWidget> createState() => _RadioButtonGroupWidgetState();
}

class _RadioButtonGroupWidgetState extends State<RadioButtonGroupWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.itens,
    );
  }
}
