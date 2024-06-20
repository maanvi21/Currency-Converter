import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Welcome Back,",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text("Convert currencies with ease.",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    SizedBox(
                      height: 40,
                    ),
                    Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_2_outlined),
                                labelText: "Email",
                                hintText: "Email",
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
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
                          SizedBox(
                            height: 3,
                          ),
                          // forgot password button
                          TextButton(
                            onPressed: null,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          // submit button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: null,
                              child: Text("LOGIN"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "OR",
                              ),
                              SizedBox(
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
                                  label: Text("Sign in with Google"),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: null,
                                child: Text.rich(
                                  TextSpan(
                                      text: "Already have an account? ",
                                      children: const [
                                        TextSpan(
                                            text: "Signup",
                                            style: TextStyle(
                                                color: Colors.deepPurple))
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
