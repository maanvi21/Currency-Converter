import 'package:flutter/material.dart';
import 'package:scan_and_pay/firebase/authentication/login.dart';

import 'currency_converter_material_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyLoginPage());
  }
}
