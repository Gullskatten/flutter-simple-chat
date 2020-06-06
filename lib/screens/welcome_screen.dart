import 'package:flash_chat/components/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeId = "welcome";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.white
    ).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash chat'],
                  speed: Duration( milliseconds: 200),
                  totalRepeatCount: 1,
                  textStyle: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w900,
                ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Colors.lightBlueAccent,
              text: 'Login',
              onPress: (){
                Navigator.pushNamed(context, LoginScreen.routeId);
              },
            ),
            RoundedButton(
              color: Colors.blueAccent,
              text: 'Register',
              onPress: (){
                Navigator.pushNamed(context, RegistrationScreen.routeId);
              },
            ),
          ],
        ),
      ),
    );
  }
}
