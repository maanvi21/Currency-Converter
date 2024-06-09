import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color buttonColor = Color.fromARGB(255, 58, 70, 104);
  Color textColor = const Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            buttonColor = Color.fromARGB(255, 255, 255, 255);
            textColor = Color.fromARGB(255, 125, 125, 157);
          });

          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              buttonColor = Color.fromARGB(255, 58, 70, 104);
              textColor = Colors.white;
            });
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor, // Set the button color dynamically
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: Size(300, 50),
        ),
        child: Text(
          "Convert",
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
