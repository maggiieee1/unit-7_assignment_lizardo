import 'package:flutter/material.dart';
import 'package:unit7_assignment_lizardo/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harry Potter Characters',
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
      },
    );
  }
}
