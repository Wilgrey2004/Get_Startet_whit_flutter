import 'package:flutter/material.dart';
import 'package:hello_word_01/presentation/screens/Counter/counter_funcions_screen.dart';
//import 'package:hello_word_01/presentation/screens/Counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const CounterFuncionsScreen(),
    );
  }
}
