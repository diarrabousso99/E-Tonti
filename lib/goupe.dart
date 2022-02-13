import 'package:flutter/material.dart';
import 'package:itontiapp/accueil.dart';
import 'package:itontiapp/demo.dart';
import 'package:itontiapp/goldDetail.dart';
import 'package:itontiapp/infoGroupe.dart';
import 'package:itontiapp/infoSilver.dart';
import 'package:itontiapp/infojappal.dart';
import 'package:itontiapp/login.dart';

class Groupe extends StatelessWidget {
  Groupe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Groupe Diamond',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500]),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Groupe public sur 12 mois', // choice rapid improuvmentof painting ability
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '20,000 CFA',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue)),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Animaation();
                                  //return Verification(phoneController.text);
                                }));
                              },
                              child: Text(
                                "Voir plus",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 130,
            width: double.infinity,
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
                        Colors.orangeAccent,
                        Colors.orange,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/goldbis1.png",
                        width: 90,
                      ),
                      //Icon(Icons.star, color: Colors.white, size: 50),
                      SizedBox(height: 10),
                      Text(
                        'Gold',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Groupe Gold',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500]),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Groupe public sur 12 mois', // choice rapid improuvmentof painting ability
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10,000 CFA',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.orange)),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return GoldDetail();
                                  //return Verification(phoneController.text);
                                }));
                              },
                              child: Text("Voir plus"),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 130,
            width: double.infinity,
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
                      //Icon(Icons.star, color: Colors.white, size: 50),
                      Image.asset(
                        "images/silverbis1.png",
                        width: 90,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Silver',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Groupe Silver',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500]),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Groupe public sur 6 mois', // choice rapid improuvmentof painting ability
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '5,000 CFA',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue)),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return SilverDetail();
                                  //return Verification(phoneController.text);
                                }));
                              },
                              child: Text("Voir plus"),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 130,
            width: double.infinity,
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
                        Colors.orangeAccent,
                        Colors.orange,
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
                        'Jaapal',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jaapal Ma Japp',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500]),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Groupe public sur 12 mois', // choice rapid improuvmentof painting ability
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2,000 CFA',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.orange)),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return JappalDetail();
                                  //return Verification(phoneController.text);
                                }));
                              },
                              child: Text("Voir plus"),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
