import 'package:flutter/material.dart';
import 'package:riverpod_pro/pages/personPage.dart';
import 'package:riverpod_pro/widget/customButton.dart';

void main() {
  runApp(const MyApp());
}

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
      home:  HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children:  [
          Button(title: 'Elvis Stop Playng', child:  const PersonPage(), )
          ],
        ),
      ),
    );
  }
}