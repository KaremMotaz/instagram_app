import 'package:flutter/material.dart';
import 'package:instagram_app/responsive/mobile_screen.dart';
import 'package:instagram_app/responsive/web_screen.dart';

class Responsive extends StatefulWidget {
  const Responsive({super.key});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth >= 600
            ? const WebScreen()
            : const MobileScreen();
      },
    );
  }
}
