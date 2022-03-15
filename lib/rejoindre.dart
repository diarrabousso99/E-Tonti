import 'package:flutter/material.dart';
import 'package:itontiapp/accueil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Rejoindre extends StatefulWidget {
  String id;
  Rejoindre({required this.id}) : super();

  @override
  _RejoindreState createState() => _RejoindreState();
}

class _RejoindreState extends State<Rejoindre> {
  Future<void> addUser() {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    // Call the user's CollectionReference to add a new user
    return users
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('info')
        .add({'nom': "dieng"})
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Future<void>? rejoindreGroupe(idGroupe) {
    CollectionReference adherentGroupe =
        FirebaseFirestore.instance.collection('adherents');
    String? myId = FirebaseAuth.instance.currentUser?.uid;
    if (myId == null) {
      print("User non connecté");
      return null;
    } else {
      return adherentGroupe
          .add({"idGroupe": idGroupe, "idUse": myId})
          .then((value) => print("Adherent ajouté"))
          .catchError((error) => print("Erreur d'ajout de l'adherent: $error"));
      // /tontine/kGNX8RXoiIIizJ5k06wB/listeAdherents
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = new TextEditingController();

    TextEditingController CniController = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Rejoindre"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  child: Text(
                    "E-Tonti",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone_android,
                      color: Colors.orange,
                    ),
                    hintText: "Numero de Téléphone",
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text("+221"),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  controller: CniController,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.card_travel,
                        color: Colors.orange,
                      ),
                      hintText: "CNI",
                      prefix: Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      hintStyle:
                          TextStyle(color: Colors.blue.withOpacity(0.5))),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    showSimpleDialog(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text(
                    "Rejoindre",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
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
            title: Text('Réussi'),
            content: Text('Vous avez adheré au groupe'),
            actions: [
              FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  rejoindreGroupe(widget.id);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Accueil();
                    // return Verification(phoneController.text);
                  }));
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}
