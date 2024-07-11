import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/widgets/ink_button.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({required this.onTap, super.key});
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkButton(
      onPressed: onTap,
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          Flexible(
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
