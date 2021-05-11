import 'package:flutter/material.dart';

class AddTaskWidget extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.lightBlueAccent,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
              ),
            ),
            Flexible(
                child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            )),
            TextButton(
                style: flatButtonStyle,
                onPressed: () {
                  //pressed
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
