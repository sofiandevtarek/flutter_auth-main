import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/sign_up.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const Auth(),
    ),
  );
}

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff293037),
      ),
      home: SignUp(),
    );
  }
}
