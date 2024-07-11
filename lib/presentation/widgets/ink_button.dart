import 'package:flutter/material.dart';

class InkButton extends StatelessWidget {
  const InkButton({
    required this.child,
    required this.onPressed,
    super.key,
    this.borderRadius,
  });
  final Widget child;
  final void Function() onPressed;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onPressed,
        borderRadius: borderRadius ?? BorderRadius.circular(20),
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: child,
        ),
      ),
    );
  }
}
