import 'package:flutter/material.dart';

class ApptextField extends StatelessWidget {
  const ApptextField({
    this.onChanged,
    super.key,
    this.hint,
    this.suffixIcon,
  });
  final void Function(String newVal)? onChanged;
  final String? hint;
  final Widget? suffixIcon;

  static final _defaultBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black, width: 1.5),
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      cursorColor: Colors.grey.shade600,
      decoration: InputDecoration(
        border: _defaultBorder,
        errorBorder: _defaultBorder,
        enabledBorder: _defaultBorder,
        focusedBorder: _defaultBorder,
        focusedErrorBorder: _defaultBorder,
        disabledBorder: _defaultBorder,
        suffixIcon: suffixIcon,
        hintText: hint,
      ),
    );
  }
}
