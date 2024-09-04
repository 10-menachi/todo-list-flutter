import 'package:flutter/material.dart';
import 'package:todolist/utils/colors.dart';
import 'package:todolist/utils/routes.dart';
import 'package:todolist/widgets/custom_button.dart';
import 'package:todolist/widgets/custom_text_input.dart';
import 'package:todolist/widgets/shape.dart';
import 'package:todolist/widgets/title_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void signup() {
    print("Name: ${_nameController.text}");
    print("Email: ${_emailController.text}");
    print("Password: ${_passwordController.text}");
    print("Confirm Password: ${_confirmPasswordController.text}");
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                    height: 150,
                  ),
                  const TitleText(text: "Welcome Aboard!"),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 25),
                    child: Text(
                      "Let’s help to meet up your tasks.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  CustomTextInput(
                    controller: _nameController,
                    hintText: "Name",
                    icon: Icons.person,
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
                  CustomTextInput(
                    controller: _confirmPasswordController,
                    hintText: "Confirm Password",
                    icon: Icons.lock,
                    obscureText: true, // To hide the password text
                  ),
                  CustomButton(
                    text: "Sign Up",
                    onPressed: signup,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.login);
                        },
                        child: const Text("Login"),
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
