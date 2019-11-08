import 'package:chat_app/components/buttons.dart';
import 'package:chat_app/main.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/first.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'Login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool showspinner = false;
  String email;
  String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6D6E71),
      body: ModalProgressHUD(
        inAsyncCall: showspinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Image(
                    image: logo,
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                width: 200,
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextField(
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: "Enter your Email"),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextField(
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          obscureText: true,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            pass = value;
                          },
                          decoration: kTextFieldDecoration),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RoundedButton(
                      title: 'Log In',
                      color: Colors.tealAccent,
                      onPressed: () async {
                        setState(() {
                          showspinner = true;
                        });
                        try {
                          FirebaseUser newUser =
                              (await _auth.signInWithEmailAndPassword(
                                      email: email, password: pass))
                                  .user;
                          if (newUser != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Chat(
                                  user: newUser,
                                ),
                              ),
                            );
                            setState(() {
                              showspinner = false;
                            });
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
