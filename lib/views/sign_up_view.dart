import 'package:chat_app/views/login_view.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff27435F),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            SizedBox(height: 135),
            Text(
              "Sign up",
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
              label: "Sign up",
              onPressed: () {
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginView();
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
