import 'package:flutter/material.dart';
import 'preAdoption.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreAdoption preAdopt = PreAdoption();
    return Scaffold(
        appBar: AppBar(
          title: Text('Life With Pets'),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            children: <Widget>[
              createButton(
                  context,
                  'assets/images/preAdoption.jpg',
                  'Am I ready to adopt?',
                  //'Information to help you make good choices\nabout a new pet',
                  preAdopt),
              createButton(
                  context,
                  'assets/images/adoptionPt1.jpg',
                  'What should I know?',
                  //'Information to help you make good decisions \nwhen adopting',
                  preAdopt),
              createButton(
                  context,
                  'assets/images/adoptionPt2.jpg',
                  'Where can I adopt?',
                  // 'A service to help you find adoptable pets\nnear you',
                  preAdopt),
              createButton(
                  context,
                  'assets/images/postAdoption.jpg',
                  'What now?',
                  // 'Information to help you make good choices\nwhen caring for your pet',
                  preAdopt)
            ]));
  }
}

GestureDetector createButton(BuildContext context, String image,
    String buttonName, /*String subText,*/ StatelessWidget nextPage) {
  final double wid = MediaQuery.of(context).size.width;
  return GestureDetector(
      onTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => nextPage))
          },
      child: Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Container(
                  width: wid - 20,
                  height: 230,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7)
                      ]),
                  child: Column(children: <Widget>[
                    Stack(children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(image))),
                      Positioned(
                          child: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      child: Container(
                                          height: 80,
                                          width: wid - 40,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.grey[800],
                                                  Colors.grey[900]
                                                      .withOpacity(0)
                                                ]),
                                          )))))),
                      Positioned(
                          top: 20,
                          left: 20,
                          child: Text(buttonName,
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(blurRadius: 15, color: Colors.black)
                                  ]))),
                    ]),
                  ])))));
}
