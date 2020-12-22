import 'package:cesar_tcc/ui/pages/mari_chat/components/send_message_input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mari_chat_presenter.dart';
import 'components/components.dart';
import '../../components/components.dart';

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
      body: Builder(
        builder: (context) {

          widget.presenter.mainErrorStream.listen((error) {
            if(error != null) {
              showErrorMessage(context, error);
            }
          });

          return Column(
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
                child: Provider(
                  create: (_) => widget.presenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: SendMessageInput(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16, bottom: 16, left: 16),
                        child: SendMessageButton(),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }
      )
    );
  }
}