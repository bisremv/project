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
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final user = await signin();
            appUser = user; // Store the user in the external variable
            print(user.displayName);
            Navigator.pushNamed(context, "/home");
          },
          child: Text("SIGNUP"),
        ),
      ),
    );
  }

  Future<dynamic> signin() async {
    final user = await GoogleSignInApi.login();

    return user;
  }
}
