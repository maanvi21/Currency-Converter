import 'package:flutter/material.dart';
import 'package:scan_and_pay/widgets/converted_currency.dart';
import 'package:scan_and_pay/widgets/custom_button.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  //textediting controller is an inbuilt class in flutter
  final TextEditingController _controller = TextEditingController();
  double amount = 0.0;

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  // Set state will set the amount to colntroller.text//

  void convertCurrency() {
    setState(() {
      amount = double.tryParse(_controller.text) ?? 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConvertedCurrencyContainer(amount: amount),
            const SizedBox(
              height: 50,
            ),
            // Text field in which you put in the amount
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                onSubmitted: (value) {
                  convertCurrency();
                },
                // the above code is simply to transfer whatever value u put into the text field to the variable
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              buttonText: "Convert",
            ),
          ],
        ),
      ),
    );
  }
}
