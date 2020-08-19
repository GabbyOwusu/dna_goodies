import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //Color.fromRGBO(251, 174, 40, 1),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 280,
                      width: 280,
                      child: Image.asset('images/illustration.png'),
                    ),
                    SizedBox(height: 50),
                    Container(
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontFamily: 'SanFransisco',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 40, right: 40),
                      child: Text(
                        'The easiest way to get your groceries online. '
                        'Make purchases, and have them delivered to you.'
                        'Buy your groceries from the convienince of your home. Only a click away.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.4,
                          color: Colors.grey,
                          fontFamily: 'Sanfrancisco',
                        ),
                      ),
                    ),
                    // Row(
                    //   children: <Widget>[],
                    // ),
                    SizedBox(height: 50),
                    Container(
                      color: Colors.transparent,
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 60, right: 60, bottom: 20),
                        width: double.infinity,
                        alignment: Alignment.bottomCenter,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
