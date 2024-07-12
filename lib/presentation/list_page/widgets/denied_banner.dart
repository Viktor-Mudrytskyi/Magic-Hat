import 'package:flutter/material.dart';

class DeniedBanner extends StatelessWidget {
  const DeniedBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 4),
      ),
      child: const Center(
        child: FittedBox(
          child: Text(
            'ACCESS DENIED',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
