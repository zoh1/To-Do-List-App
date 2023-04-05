import 'package:flutter/material.dart';
import 'package:to_do_list_app/SignUp&Login/Forgot.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Align(
                child: Image(image: AssetImage("assets/Logo.png")),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Color.fromRGBO(58, 58, 58, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Email",
                textAlign: TextAlign.end,
              ),
              SizedBox(
                height: 3,
              ),
              TextField(
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                  hintText: "example@example.com",
                  hintStyle: TextStyle(
                    color: Colors.black12,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Password",
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
                    'Remember me',style: TextStyle(color: Colors.black54),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));},
                    child:Text("Forget Password?",style: TextStyle(color: Colors.purple),),
                  )
                ],
              ),
              SizedBox(
                height: 150,
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: MediaQuery.of(context).size.width,
                child: Text("Login", style: TextStyle(color: Colors.white)),
                color: Colors.purple,
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Don’t have any account? Sign Up",
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
