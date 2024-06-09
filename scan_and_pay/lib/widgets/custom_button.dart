import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  // here define the props
  final String buttonText;

  const CustomButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  // here define the initial states of the button
  Color buttonColor = const Color.fromARGB(255, 58, 70, 104);
  Color textColor = const Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(
            () {
              buttonColor = const Color.fromARGB(255, 255, 255, 255);
              textColor = const Color.fromARGB(255, 125, 125, 157);
            },
          );

          Future.delayed(
            const Duration(milliseconds: 200),
            () {
              setState(
                () {
                  buttonColor = const Color.fromARGB(255, 58, 70, 104);
                  textColor = Colors.white;
                },
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor, // Set the button color dynamically
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: const Size(300, 50),
        ),
        child: Text(
          widget.buttonText,
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
