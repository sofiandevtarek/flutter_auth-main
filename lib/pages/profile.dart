import 'package:flutter/material.dart';
import 'package:flutter_auth/widgets/my_text_w.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
          child: Column(
            children: [
              Icon(Icons.person, color: Colors.tealAccent, size: 130,),
              SizedBox(height: 30),
              MyTextW(
                q: "Name",
                ans: "Sofian Tarek",
              ),
              MyTextW(
                q: "Age",
                ans: "15",
              ),
              MyTextW(
                q: "Job",
                ans: "Developer",
              ),
              MyTextW(
                q: "Email",
                ans: "sofiantarek@gmail.com",
              ),
              MyTextW(
                q: "Password",
                ans: "alalaalla",
              ),
            ],
          ),
      ),
    );
  }
}
