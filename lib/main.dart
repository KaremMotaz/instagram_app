import 'package:flutter/material.dart';
import 'package:instagram_app/responsive/responsive.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(color: Colors.grey[800])
      ),
      darkTheme: ThemeData.dark(),
      home: const Responsive(),
    );
  }
}
