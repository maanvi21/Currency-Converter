import 'package:flutter/material.dart';
import 'package:scan_and_pay/widgets/converted_currency.dart';
import 'package:scan_and_pay/widgets/custom_button.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConvertedCurrencyContainer(),
          SizedBox(
            height: 50,
          ),
          //text field in which you put in the amount
          TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: "Please enter the amount in USD",
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Icons.monetization_on_outlined),
              prefixIconColor: Colors.black,
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(60))),
            ),
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(
            buttonText: "Convert",
          ),
        ],
      )),
    );
  }
}

// why filled:true ?
