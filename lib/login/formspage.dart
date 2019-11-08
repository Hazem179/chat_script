import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Formmain extends StatelessWidget {
  static const String id = 'Form';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF6D6E71),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFFF6D6E71),
          bottom: TabBar(
            unselectedLabelColor: Colors.tealAccent,
            indicatorColor: Colors.teal.withOpacity(0),
            tabs: [
              Tab(
                icon: Icon(Icons.verified_user),
                text: "Login",
              ),
              Tab(icon: Icon(Icons.assignment), text: "Register"),
            ],
          ),
          title: Text('INTRODUCE YOURSELF'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [LoginScreen(), RegistrationScreen()],
        ),
      ),
    );
  }
}
