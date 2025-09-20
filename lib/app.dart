import 'package:flutter/material.dart';
import 'package:flutter_atividade/pages/home_page.dart';
import 'package:flutter_atividade/pages/segunda_page.dart';
import 'package:flutter_atividade/pages/terceira_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SecondPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
