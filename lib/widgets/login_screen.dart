import "package:flutter/material.dart";
import 'package:login/widgets/home_screen.dart';

TextStyle myStyle = TextStyle(
  fontSize: 25,
);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: ((value) {
        setState(() {
          username = value;
        });
      }),
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );

    final passwordField = TextField(
      onChanged: ((value) {
        setState(() {
          password = value;
        });
      }),
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {
          if (username == "Sajish" && password == "Shrestha") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            print('Login failed');
          }
        },
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Text('Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.supervised_user_circle_rounded,
                      size: 150,
                      color: Colors.green,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    usernameField,
                    SizedBox(
                      height: 20,
                    ),
                    passwordField,
                    SizedBox(
                      height: 20,
                    ),
                    myLoginButton,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
