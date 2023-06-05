import 'package:accountingapp/splash_screen/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const accounting_app());
}
class accounting_app extends StatelessWidget {
  const accounting_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Accounting_App(),
    );
  }
}

