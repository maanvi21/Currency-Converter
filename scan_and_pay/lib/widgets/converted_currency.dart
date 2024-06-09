import 'package:flutter/material.dart';

class ConvertedCurrencyContainer extends StatefulWidget {
  const ConvertedCurrencyContainer({super.key});

  @override
  State<ConvertedCurrencyContainer> createState() =>
      _ConvertedCurrencyContainerState();
}

class _ConvertedCurrencyContainerState
    extends State<ConvertedCurrencyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'A counter that starts at 0',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
