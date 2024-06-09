import 'package:flutter/material.dart';

//stateless widget is immutable
class ConvertedCurrencyContainer extends StatefulWidget {
  const ConvertedCurrencyContainer({super.key});

  @override
  State<ConvertedCurrencyContainer> createState() =>
      _ConvertedCurrencyContainerState();
}

class _ConvertedCurrencyContainerState
    extends State<ConvertedCurrencyContainer> {
  //define initial state
  final String displayText = "";

  @override
  Widget build(BuildContext context) {
      int result = 0;
    return Container(
      child: Text(
        displayText.isEmpty ? result:  ,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
