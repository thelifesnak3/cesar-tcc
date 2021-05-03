import 'package:cesar_tcc/ui/pages/mari_home/components/comecar_button.dart';
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
            'Olá! Eu sou a Iara.',
            style: Theme.of(context).textTheme.headline3,
          ),
          // SizedBox(height: 8),
          // Text(
          //   'Interaja comigo para obter informações a respeito do turismo.',
          //   style: Theme.of(context).textTheme.headline3,
          // ),
          SizedBox(height: 128),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'sua guia turística',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'virtual',
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(height: 32),
                ComecarButton()
              ],
            ),
          ),
          Expanded(child: Container()),
        ],
      )
    );
  }
}