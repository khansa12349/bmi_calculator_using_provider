import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'calculations.dart';
import 'calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
      create: (context) => Calculations(),
      child:
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CalculatorScreen(),
      ),
    );
  }
}

