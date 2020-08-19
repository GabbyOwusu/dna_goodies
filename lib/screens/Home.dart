import 'package:dna_goodies/screens/Anim.dart';
import 'package:flutter/material.dart';

class Anim extends StatefulWidget {
  @override
  _AnimState createState() => _AnimState();
}

class _AnimState extends State<Anim> {
  double endSize = 2.0;
  bool ended = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        endSize = 500;
        ended = !ended;
      });
      Future.delayed(Duration(milliseconds: 1600), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(251, 174, 40, 1),
      child: Container(
        color: Color.fromRGBO(251, 174, 40, 1),
        alignment: Alignment.center,
        child: TweenAnimationBuilder(
          curve: Curves.bounceInOut,
          tween: Tween<double>(begin: 2, end: endSize),
          duration: Duration(milliseconds: 1500),
          builder: (context, size, child) {
            return Transform.scale(scale: 0.9, child: child);
          },
          child: Image.asset('images/60fps.gif'),
        ),
      ),
    );
  }
}
