import 'package:abe_app/common_widgets/container.dart';
import 'package:abe_app/common_widgets/spacer.dart';
import 'package:abe_app/common_widgets/text_field.dart';
import 'package:abe_app/common_widgets/text_style.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Image.asset('assets/signup.png'),
            spacer(height: height * 0.02),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Connect and form business relationships, share innovative ideas, seek potential business partners, sponsors or investors    and share your moments",
                maxLines: 5,
                style: TextStyle(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            spacer(height: height * 0.02),
            Text(
              "Sign Up",
              style: style(
                size: 20,
              ),
            ),
            customizeContainer(
              width: width * 0.7,
              input: inputfield(
                guss: "First name",
              ),
            ),
            customizeContainer(
              width: width * 0.7,
              input: inputfield(
                guss: "Last name",
              ),
            ),
            customizeContainer(
              width: width * 0.7,
              input: inputfield(
                guss: "Number",
              ),
            ),
            customizeContainer(
              width: width * 0.7,
              input: inputfield(
                guss: "Email",
              ),
            ),
            customizeContainer(
              width: width * 0.7,
              input: inputfield(guss: "Password", showtext: true),
            ),
            customizeContainer(
              width: width * 0.7,
              input: inputfield(guss: "Confirm Password", showtext: true),
            ),
            spacer(height: height * 0.02),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: width * 0.3,
                height: height * 0.03,
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
            Row(
              children: [
                spacer(width: width * 0.275),
                Text(
                  "Already have an Account?",
                  style: style(size: 12),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SignUpScreen())));
                    },
                    child: const Text("Sign in"))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
