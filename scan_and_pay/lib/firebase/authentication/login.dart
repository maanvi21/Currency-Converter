import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scan_and_pay/firebase/authentication/sign_up.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  String googleLogo = 'assets/logos/icons8-google-logo-48.png';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Welcome Back,",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const Text("Convert currencies with ease.",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    const SizedBox(
                      height: 40,
                    ),
                    Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_2_outlined),
                                labelText: "Email",
                                hintText: "Email",
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_open_outlined),
                                suffixIcon: IconButton(
                                    //is this on pressed null working?
                                    onPressed: null,
                                    icon: Icon(Icons.remove_red_eye_sharp)),
                                labelText: "Password",
                                hintText: "Password",
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          // forgot password button
                          const TextButton(
                            onPressed: null,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          // submit button
                          const SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: null,
                              child: Text("LOGIN"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "OR",
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton.icon(
                                  icon: Image.asset(
                                    googleLogo,
                                    width: 30,
                                  ),
                                  onPressed: null,
                                  label: const Text("Sign in with Google"),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: null,
                                child: Text.rich(
                                  TextSpan(
                                      text: "Don't have an account yet? ",
                                      children: [
                                        TextSpan(
                                          text: "Signup",
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        MySignUpPage(),
                                                  ));
                                            },
                                          style: const TextStyle(
                                              color: Colors.deepPurple),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}
