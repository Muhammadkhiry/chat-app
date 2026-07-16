import 'package:chat_app/consts.dart';
import 'package:chat_app/views/home_view.dart';
import 'package:chat_app/views/sign_up_view.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 151),
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/scholar.png"),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Scholar Chat",
                style: TextStyle(
                  fontFamily: "Pacifico-Regular",
                  fontSize: 33,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 111),
                  Text(
                    "Sign in",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    controller: emailController,
                    label: "Email",
                    hint: "username@gmail.com",
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    controller: passwordController,
                    label: "Password",
                    hint: "***************",
                  ),
                  SizedBox(height: 21),
                  CustomButton(
                    label: "Sign in",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeView();
                          },
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "don't have an account?",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUpView();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xffD2EEE9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
