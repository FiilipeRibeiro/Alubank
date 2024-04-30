import 'package:alura_style/src/themes/my_theme.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class AppStyle extends StatelessWidget {
  const AppStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alubank',
      theme: MyTheme,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
