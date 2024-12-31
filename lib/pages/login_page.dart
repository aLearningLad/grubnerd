import 'package:flutter/material.dart';
import 'package:grubnerdapp/components/my_button.dart';
import 'package:grubnerdapp/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onTap() {}

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25,
            ),

            // message, app slogan
            Text(
              "Grud Nerd",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            // email textfield
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            SizedBox(
              height: 10,
            ),

            // password textfield
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true, //will hide characters as password is entered
            ),

            SizedBox(height: 10),

            // sign in button
            MyButton(
              text: "Sign In",
              onTap: onTap,
            ),

            SizedBox(
              height: 10,
            ),

            // not a member? register now
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Register now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
