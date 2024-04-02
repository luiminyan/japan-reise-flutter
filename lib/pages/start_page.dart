import 'package:flutter/material.dart';
import 'package:japan_reise/components/button.dart';

// type "st": choose flutter stateless widget
// class of this class = StartPage -> write in the main.dart
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold instead of the placeholder
    return Scaffold(
      // choose color for background
      backgroundColor: Color.fromARGB(255, 222, 210, 243),
      resizeToAvoidBottomInset: false,

      // body: SafeArea Widget, start after the status bar
      body: SafeArea(
          // Column is the child of safearea
          child: Column(
        // column starts left
        crossAxisAlignment: CrossAxisAlignment.start,
        // childrens of the column
        children: [
          // create distance between row and top
          SizedBox(height: 25),
          // a row
          Row(
            // set the row in the center
            mainAxisAlignment: MainAxisAlignment.center,
            // children of the rows
            children: [
              // Text widget
              Text(
                // text content
                "JAPAN JOURNEY",
                // style of the Text widget, use a TestStyle Widget
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
              // SizedBox: make a distance between 2 widgets
              SizedBox(
                width: 10,
              ),
              Image.asset("lib/images/japanflag.png", height: 30),
            ],
          ),
          SizedBox(height: 25),
          // build photo widget in a Center widget
          Center(
            child: Image.asset("lib/images/japan5.png", height: 250),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Erleben Sie Japan ein!",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "日本を体験してみよう！",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Entdecke das Land der Traditionen!",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 30),
          // make the button in middle
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              //     connect my button widget
              // give the parameter when creating the button
              child: MyButton(
                myText: "Reise Starten!",
                // button event
                event: () => Navigator.pushNamed(context, "/menupage"),
              )),
        ],
      )),
    );
  }
}
