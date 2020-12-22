import 'package:flutter/material.dart';

import 'package:cesar_tcc/ui/pages/mari_chat/components/components.dart';
import 'package:cesar_tcc/ui/pages/mari_chat/mari_chat_presenter.dart';

class MariChatPage extends StatefulWidget {
  final MariChatPresenter presenter;

  MariChatPage(this.presenter);

  @override
  _MariChatPageState createState() => _MariChatPageState();
}

class _MariChatPageState extends State<MariChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Mari'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.info_outline),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white
            )
          ),
          Divider(),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ActionButton(text: 'Hospedagens')
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: ActionButton(text: 'Restaurantes')
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: ActionButton(text: 'Compras')
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: ActionButton(text: 'Pacotes de Viagens')
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: ActionButton(text: 'Alugueis de Temporada')
                  )
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      style: TextStyle(
                        color: Theme.of(context).primaryColorLight
                      ),
                      decoration: InputDecoration(
                        labelText: 'Envie uma mensagem...',
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColorLight
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, bottom: 16, left: 16),
                  child: Icon(
                    Icons.send,
                    color: Theme.of(context).primaryColorLight,
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}