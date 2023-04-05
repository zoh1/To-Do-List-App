import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage("assets/Logo.png"),
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Align(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Create Your Account",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("First Name", textAlign: TextAlign.end),
                SizedBox(
                  height: 2,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text("Last Name", textAlign: TextAlign.end),
                SizedBox(
                  height: 2,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text("Email", textAlign: TextAlign.end),
                SizedBox(
                  height: 2,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text("Password", textAlign: TextAlign.end),
                SizedBox(
                  height: 2,
                ),
                TextField(
                  decoration: InputDecoration(suffixIcon: Icon(Icons.hide_source),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
                Row(
                  children: [
                    Material(
                      child: Checkbox(
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        },
                      ),
                    ),
                    const Text(
                      'I have read and accept terms and conditions',
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.purple,
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text("Sign up", style: TextStyle(color: Colors.white)),
                ),
                Align(
                    child: Text(
                  "Already have an account? Sign In",
                  textAlign: TextAlign.center,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
