import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../mari_chat_presenter.dart';

class SendMessageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<MariChatPresenter>(context);
    return StreamBuilder<bool>(
      builder: (context, snapshot) {
        return InkWell(
          onTap: presenter.sendMessage,
          child: Icon(
            Icons.send,
            color: Theme.of(context).primaryColorLight,
          ),
        );
      }
    );
  }
}