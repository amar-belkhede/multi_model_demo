library injectable_package_demo;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

class InjectableDemopackageButton extends StatelessWidget {
  const InjectableDemopackageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const InjectableDemoApp()),
        );
      },
      child: Text("InjectableDemoApp"),
    );
  }
}

class InjectableDemoApp extends StatefulWidget {
  const InjectableDemoApp({super.key});

  @override
  State<InjectableDemoApp> createState() => _InjectableDemoAppState();
}

class _InjectableDemoAppState extends State<InjectableDemoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Injectable Demo"),
      ),
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
