import 'package:chat_app/screens/first.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'login/formspage.dart';
import 'screens/desc.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat',
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: Desc.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        Chat.id: (context) => Chat(),
        First.id: (context) => First(),
        Desc.id: (context) => Desc(),
        Formmain.id: (context) => Formmain()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  static const String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  width: 100.0,
                  child: Image.asset("images/logo.png"),
                ),
              ),
              Text(
                "Chat",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomButton(
            text: 'Login',
            callback: () {
              Navigator.of(context).pushNamed(LoginScreen.id);
            },
          ),
          CustomButton(
            text: 'Register',
            callback: () {
              Navigator.of(context).pushNamed(RegistrationScreen.id);
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton({Key key, this.callback, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Material(
        color: Colors.blueAccent,
        elevation: 6.0,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 200.5,
          height: 45.5,
          child: Text(text),
        ),
      ),
    );
  }
}
