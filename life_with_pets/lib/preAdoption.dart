import 'package:flutter/material.dart';

class PreAdoption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pre-Adoption Information')),
        body: Padding(
            padding: EdgeInsets.all(3.0),
            child: ListView(children: [
              getStandardText(
                  "Deciding to adopt a new pet can be a frightening yet" +
                      "exciting process. The goal of this sections is to help you" +
                      "make an informed decision about which pet would best fit your lifestyle.",
                  5.0,
                  2.0,
                  0,
                  0),
              Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    "Here is some basic information about the 3 pets that this app encompases:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2.0),
                    textAlign: TextAlign.center,
                  )),
              Table(
                  border: TableBorder.all(
                      color: Color(0xFF000000),
                      width: 3.0,
                      style: BorderStyle.solid),
                  children: [
                    TableRow(children: [
                      getTitleCell("Information"),
                      getTitleCell("Cats"),
                      getTitleCell("Dogs"),
                      getTitleCell("Rabbits")
                    ]),
                    TableRow(children: [
                      getNormalCell("Weight (pounds)"),
                      getNormalCell("6-10"),
                      getNormalCell("5-150"),
                      getNormalCell("1-10")
                    ]),
                    TableRow(children: [
                      getNormalCell("Lifespan (years)"),
                      getNormalCell("10-15"),
                      getNormalCell("10-13"),
                      getNormalCell("8-12")
                    ]),
                    TableRow(children: [
                      getNormalCell("Diet"),
                      getNormalCell("Dry/Wet Cat Food"),
                      getNormalCell("Dry/Wet Dog Food"),
                      getNormalCell("Hay, Leafy Greens, & Fruits and Vegtables")
                    ]),
                    TableRow(children: [
                      getNormalCell("Hygiene"),
                      getNormalCell("Self-bathing"),
                      getNormalCell("Require Bathing"),
                      getNormalCell("Self-bathing")
                    ]),
                    TableRow(children: [
                      getNormalCell("Noise Level"),
                      getNormalCell("Usually Quiet"),
                      getNormalCell("Depends on the individual"),
                      getNormalCell("Almost Silent")
                    ]),
                    TableRow(children: [
                      getNormalCell("Care Intensity"),
                      getNormalCell("Minimum"),
                      getNormalCell("Medium"),
                      getNormalCell("Extreme")
                    ])
                  ]),
              getStandardText(
                  "More detailed information about cat care can be found here",
                  5.0,
                  2.0,
                  1,
                  1),
              getStandardText(
                  "More detailed information about dog care can be found here",
                  5.0,
                  2.0,
                  1,
                  1),
              getStandardText(
                  "More detailed information about rabbit care can be found here",
                  5.0,
                  2.0,
                  1,
                  1),
              Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    "When deciding which of these 3 animals is best for you, consider the following:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  )),
              getSubTitle("1) Where you live"),
              getStandardText(
                  "If you live in an apartment check to see what kind of pets," +
                      " if any, your lease allows, and what fees are associated." +
                      " Similarly, renters should check with their landlords. If" +
                      " you own your own home then you should be good to go with whatever you choose.",
                  1.5,
                  2,
                  1,
                  1),
              getSubTitle("2) Your time devotion"),
              getStandardText(
                  "If you work long hours during the day and no one is home," +
                      " a dog is probably not the most optimal pet for you. Dogs" +
                      " require lots of attention and exercise throughout the day," +
                      " so you would need to either hire a dog walker or find a" +
                      " doggy day care for your dog while you are away. Cats can" +
                      " be left alone for long stretches with little to no trouble," +
                      " so long as they have food, water, and a litter box.",
                  1.5,
                  2,
                  1,
                  1),
              getSubTitle("3) How much you travel"),
              getStandardText(
                  "If you travel frequently or for long periods of time," +
                      " anything more care intensive than a goldfish if going to" +
                      " be very difficult and expensive to care for. Cats can be" +
                      " left for a few days at a time with extra food, water, and" +
                      " litter boxes, but dogs and rabbits need hours of attention" +
                      " daily. While you are gone, you would need to board them or" +
                      " hire a pet/house sitter.",
                  1.5,
                  2,
                  1,
                  1),
              getSubTitle("4) How much income you can devote to pet care"),
              getStandardText(
                  "If you expect pets to be just as expensive as" +
                      " their food, you are sorely mistaken. When owning pets you have" +
                      " to take respondibility for their whole lives, including their" +
                      " food, happiness, and medical expenses. Most pets cost over" +
                      " \$1,000 in their first year including supplies, vet visits," +
                      " and food, so before you adopt you should consider saving up" +
                      " some money for the extra expense. You should also be" +
                      " prepared for upexpected medical emergencies by putting" +
                      " away some money beforehand.",
                  1.5,
                  2,
                  1,
                  1),
              getSubTitle("5) Your personality"),
              getStandardText(
                  "If you are an active person and you would love to exercise" +
                      " with your pet, a cat may not be a good fit for you. Dogs" +
                      " are very energetic and need a lot of exercise and attention," +
                      " so make sure you are prepared for that if you decide to" +
                      " adopt one. Cats tend to be lazy, aloof, and want only" +
                      " occasional attention. They sleep for most of the day and" +
                      " usually just want to cuddle up with you and watch TV." +
                      " Rabbits are very quiet, but when they are awake they love" +
                      " to bounce around, play with their toys, and bump into your" +
                      " leg for attention. Make sure that whatever pet you choose," +
                      " you find once that you will enjoy having in your home.",
                  1.5,
                  2,
                  1,
                  1),
            ])));
  }
}

TableCell getTitleCell(String text) {
  return TableCell(
      child: Padding(
          padding: EdgeInsets.all(3.0),
          child: Center(
              child:
                  Text(text, style: TextStyle(fontWeight: FontWeight.bold)))));
}

TableCell getNormalCell(String text) {
  return TableCell(
      child: Padding(padding: EdgeInsets.all(3.5), child: Text(text)));
}

Padding getStandardText(String text, double topEdge, double botEdge,
    double leftEdge, double rightEdge) {
  return Padding(
      padding: EdgeInsetsDirectional.only(
          top: topEdge, bottom: botEdge, start: leftEdge, end: rightEdge),
      child: Text(
        text,
        textAlign: TextAlign.justify,
      ));
}

Padding getSubTitle(String text) {
  return Padding(
      padding: EdgeInsets.all(4.0),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ));
}
