import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scan_and_pay/firebase/authentication/login.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
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
                  "Get On Board!",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  "Create your profile to start Converting.",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_2_rounded),
                      labelText: "Full Name",
                      hintText: "Full Name",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email",
                      hintText: "Email",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: "Phone No",
                      hintText: "Phone No",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
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
                SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text("LOGIN"),
                  ),
                ),
                // form fields
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
                          'assets/logos/icons8-google-logo-48.png',
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
                        TextSpan(text: "Already have an account? ", children: [
                          TextSpan(
                            text: "Login",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyLoginPage(),
                                    ));
                              },
                            style: const TextStyle(color: Colors.deepPurple),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
