import 'package:flutter/material.dart';
import 'package:invenmanager/screens/splash_page.dart';

void main() {
  runApp(const Invenmanager());
}

class Invenmanager extends StatelessWidget {
  const Invenmanager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InvenManager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const SplashPage(),
    );
  }
}
