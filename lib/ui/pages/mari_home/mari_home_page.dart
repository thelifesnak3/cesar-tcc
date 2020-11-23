import 'package:flutter/material.dart';

class MariHomePage extends StatefulWidget {
  @override
  _MariHomePageState createState() => _MariHomePageState();
}

class _MariHomePageState extends State<MariHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.deepPurple[900], Colors.deepPurple[400]]
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 128),
          Text(
            'Olá! Eu sou Mari',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Sua guia Turística Virtual',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 32),
          Text(
            'Você pode fazer perguntas ou escrever. Eu irei falar o que sei sobre o assunto relacionado ao Turismo.',
            style: Theme.of(context).textTheme.headline2,
          ),
          Expanded(child: Container()),
          Center(
            child: Text(
              'Estou te ouvindo!',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          SizedBox(height: 32),
          Center(
            child: Icon(
              Icons.ac_unit,
              size: 64,
              color: Colors.white,
            )
          )
        ],
      )
    );
  }
}