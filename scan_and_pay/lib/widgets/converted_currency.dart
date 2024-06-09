import 'package:flutter/material.dart';

class ConvertedCurrencyContainer extends StatefulWidget {
  final double amount;

  const ConvertedCurrencyContainer({super.key, required this.amount});

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
        widget.amount == 0
            ? "Please enter an amount"
            : "Converted Amount: ${widget.amount * 81}",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
