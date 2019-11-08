import 'package:chat_app/login/formspage.dart';
import 'package:flutter/material.dart';

AssetImage chathead;
AssetImage logo;

class First extends StatefulWidget {
  static const String id = 'First';
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("CHOOSE YOUR CHARACTER"),
      backgroundColor: Color(0xFFF6D6E71),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF6D6E71),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chathead = AssetImage("images/bat.png");
                        logo = AssetImage("images/batl.png");
                        Navigator.pushNamed(context, Formmain.id);
                      });
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/bat.png"),
                      radius: 70,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chathead = AssetImage("images/joker.png");
                        logo = AssetImage("images/jokerl.png");

                        Navigator.pushNamed(context, Formmain.id);
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFF6D6E71),
                      backgroundImage: AssetImage("images/joker.png"),
                      radius: 70,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chathead = AssetImage("images/captin.png");
                        logo = AssetImage("images/captinl.png");

                        Navigator.pushNamed(context, Formmain.id);
                      });
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/captin.png"),
                      radius: 70,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chathead = AssetImage("images/thanos.jpg");
                        logo = AssetImage("images/thanosl.png");

                        Navigator.pushNamed(context, Formmain.id);
                      });
                    },
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("images/thanos.jpg"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chathead = AssetImage("images/thor.jpg");
                        logo = AssetImage("images/thorl.png");

                        Navigator.pushNamed(context, Formmain.id);
                      });
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/thor.jpg"),
                      radius: 70,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chathead = AssetImage("images/loki.jpg");
                        logo = AssetImage("images/lokil.png");

                        Navigator.pushNamed(context, Formmain.id);
                      });
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/loki.jpg"),
                      radius: 70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
