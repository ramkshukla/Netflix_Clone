import 'package:flutter/material.dart';

import 'module/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => SplashScreen(),
      },
    );
  }
}
