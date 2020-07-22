import 'package:flutter/material.dart';
import 'package:life_with_pets/preAdoption.dart';
import 'preAdoption.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonHeight = 225;
    PreAdoption preAdopt = PreAdoption();
    return Scaffold(
        appBar: AppBar(
          title: Text('Life With Pets'),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView(children: <Widget>[
          //Pre-Adoption Info
          createButton(
              context, 'Pre-Adoption Information', preAdopt, buttonHeight),
          //Adoption Part 1
          createButton(context, 'Adoption Part 1', preAdopt, buttonHeight),
          //Adoption Part 2
          createButton(context, 'Adoption Part 2', preAdopt, buttonHeight),
          //Post Adoption Information
          createButton(
              context, 'Post-Adoption Information', preAdopt, buttonHeight)
        ]));
  }
}

ButtonTheme createButton(BuildContext context, String buttonName,
    StatelessWidget nextPage, double height) {
  final int FLEX = 300;
  return ButtonTheme(
      height: height,
      buttonColor: Colors.deepPurple[FLEX],
      child: Padding(
          padding: EdgeInsets.all(12),
          child: RaisedButton(
            child: Text(
              buttonName,
              style: TextStyle(fontSize: 27),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => nextPage));
            },
          )));
}
