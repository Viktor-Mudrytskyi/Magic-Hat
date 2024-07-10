import 'package:flutter/material.dart';
import 'package:magic_hat/core/di.dart';
import 'package:magic_hat/presentation/initial/screens/initial_screen.dart';
import 'package:magic_hat/theme/app_theme.dart';

void main() async {
  await initGetIt();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: const InitialScreen(),
    );
  }
}
