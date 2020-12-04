import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;

  ActionButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 2,
          color: Theme.of(context).primaryColorLight
        )
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).primaryColorLight
        ),
      ),
    );
  }
}