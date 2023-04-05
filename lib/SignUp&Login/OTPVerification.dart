import 'package:flutter/material.dart';
class OTPVerification extends StatefulWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
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
                      "OTP Verification",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    "An authentication code has been sent to example@mail.com. Enter your 4 digits code. ",
                    style: TextStyle(fontSize: 16, height: 2),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16,),

                  Text("I didn’t receive code? Resend code."),

                  MaterialButton(
                    onPressed: () {},
                    color: Colors.purple,
                    minWidth: MediaQuery.of(context).size.width,
                    child: Text("Next", style: TextStyle(color: Colors.white)),
                  ),



                ],
              ),
            ),
          ),
        ));
  }
}
