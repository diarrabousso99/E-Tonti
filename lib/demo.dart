import 'package:flutter/material.dart';
import 'package:itontiapp/iconSection.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Animaation extends StatefulWidget {
  const Animaation({Key? key}) : super(key: key);

  @override
  _AnimaationState createState() => _AnimaationState();
}

class _AnimaationState extends State<Animaation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Info "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            topContainer,
            SizedBox(
              height: 20,
            ),
            IconSection(),
            SizedBox(
              height: 20,
            ),
            pogressor,
            SizedBox(
              height: 20,
            ),
            info,
          ],
        ),
      ),
    );
  }
}

Widget topContainer = Container(
  width: double.infinity,
  padding: EdgeInsets.all(25),
  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blueAccent,
        Colors.blue,
      ],
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Diamond Groupe',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
);

Widget pogressor = Container(
  child: CircularPercentIndicator(
    radius: 100,
    lineWidth: 15,
    percent: 60 / 100,
    animation: true,
    animationDuration: 1500,
    center: new Text(
      "60%",
      style: TextStyle(fontSize: 20),
    ),
    footer: new Text(
      "En cours",
      style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
    ),
  ),
);

Widget info = Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.fromLTRB(50, 20, 20, 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.people,
                size: 50,
                color: Colors.blueAccent,
              ),
              Text(
                '124 Inscrits',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.monetization_on_rounded,
                size: 50,
                color: Colors.orangeAccent,
              ),
              Text(
                '20,000 Fcfa',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.timelapse,
                size: 50,
                color: Colors.pink,
              ),
              Text(
                '12 Mois',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ],
    ));
