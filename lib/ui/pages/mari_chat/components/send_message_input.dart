import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../mari_chat_presenter.dart';

class SendMessageInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<MariChatPresenter>(context);
    return TextFormField(
      style: TextStyle(
        color: Theme.of(context).primaryColorLight
      ),
      decoration: InputDecoration(
        labelText: 'Envie uma mensagem...',
        labelStyle: TextStyle(
          color: Theme.of(context).primaryColorLight
        ),
      ),
      onChanged: presenter.onChangeMessage,
    );
  }
}