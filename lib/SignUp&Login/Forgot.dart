import 'package:flutter/material.dart';
import 'package:to_do_list_app/SignUp&Login/OTPVerification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  "Forgot Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16,),
              Text(
                "Enter the email associated with your account and we’ll send an email with instructions to reset your password.",
                style: TextStyle(fontSize: 16, height: 2),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16,),
              Text("Email", textAlign: TextAlign.end),
              SizedBox(height: 3,),
              TextField(
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(4),),
                  hintText: "example@example.com",
                  hintStyle: TextStyle(
                    color: Colors.black12,
                  ),
                ),
              ),
              SizedBox(height: 100,),
              MaterialButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPVerification()));},
                color: Colors.purple,
                minWidth: MediaQuery.of(context).size.width,
                child: Text("Send", style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTPVerification()));
                },
                child: Center(
                  child: Text(
                    "Login",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
