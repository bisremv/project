import 'package:flutter/material.dart';
import 'GoogleSignInApi.dart';

dynamic appUser;

String getUser() {
  return appUser.displayName;
}

String getPhoto() {
  return appUser.photoUrl;
}

class Signin extends StatefulWidget {
  const Signin({Key? key});
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.teal],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  final user = await signin();
                  appUser = user; // Store the user in the external variable
                  print(user.displayName);
                  Navigator.pushNamed(context, "/home");
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Colors.white,
                  elevation: 3,
                ),
                child: Text(
                  "Sign up / Sign in",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> signin() async {
    final user = await GoogleSignInApi.login();

    return user;
  }
}
