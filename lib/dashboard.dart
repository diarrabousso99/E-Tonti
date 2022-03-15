import 'package:flutter/material.dart';
import 'package:itontiapp/infoGroupe.dart';
import 'package:itontiapp/infojappal.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tableau de bord',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/profil.png"),
              ),
            ),
            subTitleSection,
            GestureDetector(
              child: Tontine,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return InfoGroupe();
                  // return Verification(phoneController.text);
                }));
              },
            ),
            lineSection,
            GestureDetector(
              child: Tontinebis,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return JappalDetail();
                  // return Verification(phoneController.text);
                }));
              },
            ),
            SizedBox(
              height: 20,
            ),
            subTitleSectionBis,
          ],
        ),
      ),
    );
  }
}

Widget subTitleSection = Container(
  margin: EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        color: Colors.indigoAccent,
        width: 5,
        height: 25,
      ),
      SizedBox(width: 10),
      Text(
        'Mes Tontines',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  ),
);
Widget subTitleSectionBis = Container(
  margin: EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        color: Colors.indigoAccent,
        width: 5,
        height: 25,
      ),
      SizedBox(width: 10),
      Text(
        'Suggestions',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  ),
);

Widget lineSection = Container(
  color: Colors.grey[200],
  padding: EdgeInsets.all(4),
);

Widget Tontine = Container(
  margin: EdgeInsets.only(left: 40),
  height: 130,
  //width: double.infinity,
  child: Row(
    children: [
      Container(
        height: 130,
        width: 110,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueAccent,
              Colors.blue,
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/diamondbis1.png",
              width: 90,
            ),
            //Icon(Icons.star, color: Colors.white, size: 50),
            SizedBox(height: 10),
            Text(
              'Diamond',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              ' Mes cotisations',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text(
                '100,000 Fcfa', // choice rapid improuvmentof painting ability
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Quitter',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.outbox,
                size: 30,
                color: Colors.red,
              ),
            ])
          ]),
        ),
      ),
    ],
  ),
);

Widget Tontinebis = Container(
  margin: EdgeInsets.only(left: 40),
  height: 130,
  //width: double.infinity,
  child: Row(
    children: [
      Container(
        height: 130,
        width: 110,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueAccent,
              Colors.blue,
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.white, size: 50),
            SizedBox(height: 10),
            Text(
              'Jaapal Ma Japp',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              ' Mes cotisations',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text(
                '10,000 Fcfa', // choice rapid improuvmentof painting ability
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Quitter',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.outbox,
                size: 30,
                color: Colors.red,
              ),
            ])
          ]),
        ),
      ),
    ],
  ),
);
