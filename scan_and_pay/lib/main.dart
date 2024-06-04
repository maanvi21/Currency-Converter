import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scan_and_pay/currency_converter_material_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CurrencyConverterMaterialPage());
  }
}
