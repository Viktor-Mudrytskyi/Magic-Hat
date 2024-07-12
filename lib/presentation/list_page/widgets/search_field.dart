import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/widgets/app_text_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({this.initialValue, this.onChanged, super.key});
  final void Function(String newVal)? onChanged;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return ApptextField(
      onChanged: (val) {
        onChanged?.call(val.trim());
      },
      hint: 'Filter characters...',
      suffixIcon: const Icon(
        Icons.search,
        color: Colors.black,
      ),
    );
  }
}
