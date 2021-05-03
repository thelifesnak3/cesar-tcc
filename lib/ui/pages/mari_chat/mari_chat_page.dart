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
        backgroundColor: Colors.white, 
        elevation: 0
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
              Container(
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Hoje",
                  style: TextStyle(
                    color: Colors.blue[800]
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle
                      ),
                      child: Text(
                        "ia",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24), 
                            topRight: Radius.circular(24)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5)
                            )
                          ]
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text("Olá meu nome é Iara"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24), 
                            topLeft: Radius.circular(24)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5)
                            )
                          ]
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text("Hospedagens"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle
                      ),
                      child: Text(
                        "ia",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24), 
                              topRight: Radius.circular(24)
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 5)
                              )
                            ]
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text("As hospedagens mais próximas baseada na sua localização atual são....")
                        ),
                      ),
                    )
                  ],
                ),
              ),
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