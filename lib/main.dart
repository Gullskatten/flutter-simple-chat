import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.routeId,
      routes: {
        WelcomeScreen.routeId: (context) => WelcomeScreen(),
        LoginScreen.routeId: (context) => LoginScreen(),
        ChatScreen.routeId: (context) => ChatScreen(),
        RegistrationScreen.routeId: (context) => RegistrationScreen(),
      },
    );
  }
}
