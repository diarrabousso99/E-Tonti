import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:itontiapp/accueil.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(inscrire());
}

class inscrire extends StatelessWidget {
  inscrire({Key? key}) : super(key: key);

  TextEditingController mailController = TextEditingController();
  TextEditingController nomController = TextEditingController();
  TextEditingController prenomController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S'inscrire"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 70,
                  child: Text(
                    "E-Tonti",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: nomController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person, color: Colors.orange),
                    hintText: " Nom",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: prenomController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person, color: Colors.orange),
                    hintText: " Prénom",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: mailController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail, color: Colors.orange),
                    hintText: " Email",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: Colors.orange),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: Colors.orange),
                    hintText: "Confirmer password",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: null),
                    Text(
                      "I agree to the Terms of Services and Privacy Policy",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      UserCredential utilisateur = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: mailController.text,
                              password: passwordController.text);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Accueil();
                        // return Verification(phoneController.text);
                      }));
                      print("Inscription reussie");

                      print(utilisateur.user);
                    } catch (e) {
                      print(e);
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text(
                    "S'inscrire",
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
}
