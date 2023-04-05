import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Center(child: Image(image: AssetImage("assets/Logo.png"))),
                  SizedBox(height: 32,),
                  Center(
                    child: Text(
                      textAlign: TextAlign.right,
                      "Create New Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    "Your new password must be different from previous used passwords.",
                    style: TextStyle(fontSize: 16, height: 2),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16,),
                  Text("Password", textAlign: TextAlign.end),
                  SizedBox(height: 3,),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.password, color: Colors.black12),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Confirm Password",
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.password, color: Colors.black12),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  SizedBox(height: 74,),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.purple,
                    minWidth: MediaQuery.of(context).size.width,
                    child: Text("Reset", style: TextStyle(color: Colors.white)),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
