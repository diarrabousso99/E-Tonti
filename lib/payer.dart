import 'package:flutter/material.dart';
import 'package:itontiapp/accueil.dart';
import 'package:itontiapp/free.dart';
import 'package:itontiapp/infoGroupe.dart';
import 'package:itontiapp/wave.dart';

class Payer extends StatefulWidget {
  const Payer({Key? key}) : super(key: key);

  @override
  _PayerState createState() => _PayerState();
}

class _PayerState extends State<Payer> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Payement"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            topContainer,
            SizedBox(
              height: 20,
            ),
            Wave(),
            SizedBox(
              height: 5,
            ),
            Free(),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orangeAccent)),
                onPressed: () {
                  showSimpleDialog(context);
                },
                child: Text(
                  "Payer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Confirmation'),
            content: Text(
                'Vous allez efectuer un payement de XXXF sur le compte du proprio 77 799 98 90'),
            actions: [
              FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Accueil();
                    // return Verification(phoneController.text);
                  }));
                },
                child: Text('OK'),
              ),
              FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Accueil();
                    // return Verification(phoneController.text);
                  }));
                },
                child: Text('Anuler'),
              ),
            ],
          ),
        );
      },
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
      Center(
        child: Text(
          'Mode de Payement',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
);
