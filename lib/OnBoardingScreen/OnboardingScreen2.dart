import 'package:flutter/material.dart';
import 'package:to_do_list_app/SignUp&Login/SignUpPage.dart';

import '../SignUp&Login/Login.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(image: AssetImage("assets/Wristwatch-amico 1.png")),
                SizedBox(
                  height: 80,
                ),
                Text("Spend your Time Wisely",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 28,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, "
                      "consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 80,
                ),
                MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    minWidth: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))
                ),
                MaterialButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                )
              ],
            ),
          ),
        ));
  }
}
