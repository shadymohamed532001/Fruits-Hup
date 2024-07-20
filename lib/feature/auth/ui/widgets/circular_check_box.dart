import 'package:flutter/material.dart';
import 'package:fruithup/core/themaing/app_colors.dart';

class CircularCheckbox extends StatefulWidget {
  const CircularCheckbox(
      {super.key, required this.value, required this.onChanged});

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  State<CircularCheckbox> createState() => _CircularCheckboxState();
}

class _CircularCheckboxState extends State<CircularCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Container(
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widget.value ? ColorManger.primaryColor : Colors.transparent,
          border: Border.all(
            color: const Color(0xffDDDFDF),
            width: 1.5,
          ),
        ),
        child: widget.value
            ? const Icon(
                Icons.check,
                size: 16.0,
                color: ColorManger.whiteColor,
              )
            : null,
      ),
    );
  }
}
