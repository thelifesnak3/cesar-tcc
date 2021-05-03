import 'package:cesar_tcc/ui/pages/mari_chat/mari_chat_page.dart';
import 'package:flutter/material.dart';

class ComecarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
          Navigator.pushNamed(context, '/chat');
      },
      child: Text(
        'Começar'.toUpperCase(),
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}