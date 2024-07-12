import 'package:flutter/material.dart';
import 'package:magic_hat/core/extensions.dart';

class UnfocusArea extends StatelessWidget {
  const UnfocusArea({
    super.key,
    this.body,
  });

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.removeFocus,
      child: body,
    );
  }
}