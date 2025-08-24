import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/home.dart';
import 'package:flutter_auth/widgets/text_ff.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController controllerName = TextEditingController();

  TextEditingController controllerEmail = TextEditingController();

  TextEditingController controllerPassword = TextEditingController();

  void signUp() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: controllerEmail.text,
        password: controllerPassword.text,
      );
    } on FirebaseException catch (e) {
      if (e.code == "user-not-found") {
        print("User not found");
      } else if (e.code == "passord-is-wrong")
        ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),
              TextFF(
                obscureText: false,
                what: "Name",
                textInputType: TextInputType.name,
                controller: controllerName,
              ),
              TextFF(
                obscureText: false,
                what: "Email",
                textInputType: TextInputType.emailAddress,
                controller: controllerEmail,
              ),
              TextFF(
                obscureText: true,
                what: "Password",
                controller: controllerPassword,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                child: MaterialButton(
                  onPressed: () {
                    signUp();
                  },
                  color: Colors.tealAccent,
                  minWidth: double.infinity,
                  height: 70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "SignUp with Google",
                  style: TextStyle(color: Colors.tealAccent, fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Loign",
                      style: TextStyle(color: Colors.tealAccent, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
