import 'package:flutter/material.dart';
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
          Text(
            '0',
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: "Please enetr the amount in USD",
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Icons.monetization_on_outlined),
              prefixIconColor: Colors.black,
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(60))),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(),
        ],
      )),
    );
  }
}
