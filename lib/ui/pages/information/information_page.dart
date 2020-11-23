import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.deepPurple[900], Colors.deepPurple[300]]
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
            'Para começar aperta o ícone com meu rosto.',
            style: Theme.of(context).textTheme.headline1,
          ),
          Expanded(child: Container()),
          Center(
            child: GestureDetector(
              onTap: () {Navigator.pushNamed(context, '/mari_home');},
              child: Icon(
                Icons.ac_unit,
                size: 64,
                color: Colors.white,
              ),
            )
          )
        ],
      )
    );
  }
}