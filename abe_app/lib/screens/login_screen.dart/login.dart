import 'package:abe_app/common_widgets/spacer.dart';
import 'package:abe_app/common_widgets/text_field.dart';
import 'package:abe_app/common_widgets/text_style.dart';
import 'package:abe_app/screens/login_screen.dart/sign_up.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/login.png'),
              spacer(height: height * 0.01),
              Text(
                "Sign in",
                style: style(size: 20),
              ),
              spacer(height: height * 0.01),
              SizedBox(
                width: width * 0.7,
                child: inputfield(guss: "Email ID"),
              ),
              spacer(height: height * 0.01),
              SizedBox(
                width: width * 0.7,
                child: inputfield(guss: "Password"),
              ),
              spacer(height: height * 0.01),
              const Align(
                alignment: Alignment(0.6, 1),
                child: Text("Forget Password"),
              ),
              spacer(height: height * 0.03),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: width * 0.4,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.3),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: style(color: Colors.white),
                    ),
                  ),
                ),
              ),
              spacer(height: height * 0.02),
              Row(
                children: [
                  spacer(width: width * 0.275),
                  Text(
                    "Dont have an Account?",
                    style: style(size: 12),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUpScreen())));
                      },
                      child: const Text("Sign Up"))
                ],
              ),
              spacer(height: height * 0.03),
              Text(
                "Sign in with",
                style: style(color: Colors.grey),
              ),
              spacer(height: height * 0.03),
              Image.asset('assets/apple.png')
            ],
          ),
        ),
      ),
    );
  }
}
