import 'package:flutter/material.dart';
import 'package:weather_app/pages/home.dart';
import 'package:weather_app/pages/searchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SearchPage(),
        '/main': (context) => Home(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    );
  }
}
