import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

import 'first.dart';

class Desc extends StatefulWidget {
  static const String id = 'DescPage';

  @override
  _DescState createState() => _DescState();
}

class _DescState extends State<Desc> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "SCRIPTS",
        description:
            "Create your own script with your friends and other people",
        backgroundColor: Color(0xFFF6D6E71),
        pathImage: "images/vback.jpg",
        backgroundImageFit: BoxFit.cover,
      ),
    );
    slides.add(
      new Slide(
        title: "CHARACTERS",
        description: "Choose your favorite character to speak like him",
        pathImage: "images/aback.jpg",
        backgroundImageFit: BoxFit.cover,
        backgroundColor: Color(0xFFF6D6E71),
      ),
    );
    
  }

  void onDonePress() {
    Navigator.pushNamed(context, First.id);
  }

  void onSkipPress() {
    Navigator.pushNamed(context, First.id);
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      colorActiveDot: Colors.white,
      slides: this.slides,
      onDonePress: this.onDonePress,
      onSkipPress: this.onSkipPress,
    );
  }
}
