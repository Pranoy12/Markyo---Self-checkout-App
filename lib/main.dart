import 'package:flutter/material.dart';
import 'package:login_markyo_app/pages/login_page.dart';
import 'package:login_markyo_app/pages/signup.dart';
import 'pages/login_page.dart';

void main() => runApp(const Markyo());

class Markyo extends StatelessWidget {
  const Markyo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const LoginPage(),
        // '/': (context) => MyRegister(),
      },
    );
  }
}
