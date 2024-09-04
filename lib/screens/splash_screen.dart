import 'package:flutter/material.dart';
import 'package:todolist/utils/colors.dart';
import 'package:todolist/utils/routes.dart';
import 'package:todolist/widgets/custom_button.dart';
import 'package:todolist/widgets/shape.dart';
import 'package:todolist/widgets/title_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: <Widget>[
          const Shape(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 180,
                ),
                Image.asset(
                  "assets/splash_image.png",
                  width: 180,
                  height: 180,
                ),
                const TitleText(
                  text: "Get Things Done",
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 14,
                    ),
                  ),
                ),
                CustomButton(
                    text: "Get Started",
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.signup);
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
