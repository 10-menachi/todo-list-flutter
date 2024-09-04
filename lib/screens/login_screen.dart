import 'package:flutter/material.dart';
import 'package:todolist/utils/colors.dart';
import 'package:todolist/utils/routes.dart';
import 'package:todolist/widgets/custom_button.dart';
import 'package:todolist/widgets/custom_text_input.dart';
import 'package:todolist/widgets/shape.dart';
import 'package:todolist/widgets/title_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() {
    // Check if the text fields are not empty
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      print("Please enter both email and password.");
      return;
    }

    // Print the text from the controllers
    print("Email: ${_emailController.text}");
    print("Password: ${_passwordController.text}");
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: <Widget>[
          const Shape(),
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 100,
                  ),
                  const TitleText(text: "Login"),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 25),
                    child: Text(
                      "Welcome Back! Kindly log in below",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  CustomTextInput(
                    controller: _emailController,
                    hintText: "Email",
                    icon: Icons.email,
                  ),
                  CustomTextInput(
                    controller: _passwordController,
                    hintText: "Password",
                    icon: Icons.lock,
                    obscureText: true, // To hide the password text
                  ),
                  CustomButton(
                    text: "Log in",
                    onPressed: () {
                      login(); // Call the login method on button press
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.signup);
                        },
                        child: const Text("Sign Up"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
