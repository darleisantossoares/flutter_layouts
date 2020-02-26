import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrum POKER meuDNA'),
      ),
      body: SizedBox.expand(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CardsListScreen(cardValue: '1'),
                  CardsListScreen(cardValue: '2'),
                  CardsListScreen(cardValue: '3'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CardsListScreen(cardValue: '5'),
                  CardsListScreen(cardValue: '8'),
                  CardsListScreen(cardValue: '13'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CardsListScreen(cardValue: '21'),
                  CardsListScreen(cardValue: '34'),
                  CardsListScreen(cardValue: '55'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CardsListScreen(cardValue: '0', icon: Icons.all_inclusive),
                  CardsListScreen(cardValue: '0', icon: Icons.help_outline),
                  CardsListScreen(cardValue: '0', icon: Icons.free_breakfast),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardsListScreen extends StatelessWidget {
  final String cardValue;
  final IconData icon;

  CardsListScreen({this.cardValue, this.icon});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print(cardValue);
      },
      color: Colors.white,
      child: Container(
        child: Center(
          child: (int.parse(cardValue) > 0 || cardValue == null)
              ? Text(
                  cardValue,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                )
              : Icon(
                  icon,
                  size: 40,
                  color: Colors.white,
                ),
        ),
        width: 70,
        height: 120,
        margin: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(width: 3),
        ),
      ),
    );
  }
}
