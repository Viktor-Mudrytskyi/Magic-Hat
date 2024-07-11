import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/widgets/app_text_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({this.onChanged, super.key});
  final void Function(String newVal)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ApptextField(
      onChanged: onChanged,
      hint: 'Filter characters...',
      suffixIcon: const Icon(
        Icons.search,
        color: Colors.black,
      ),
    );
  }
}
