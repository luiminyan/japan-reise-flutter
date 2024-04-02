import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String myText;  //final: not changeable
  final void Function()? event;

  const MyButton({
    super.key,
    required this.myText,
    required this.event
  });

  @override
  Widget build(BuildContext context) {
    // GestureDetector widget
    return GestureDetector(
      // event on tap
      onTap: event,
      // define button on Container widget
      child: Container(
        // padding parameter of Container
        padding: EdgeInsets.all(20),
        // decrorate the button
        decoration: BoxDecoration(
          color: Color.fromRGBO(51, 179, 156, 0.65),
          // make border round edge
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 2,
            color: Colors.white
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              myText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )
            ),
            SizedBox(width: 10),
            Icon(
                Icons.arrow_forward,
                color: Colors.white
            ),
          ],
        ),
      ),
    );
  }
}
