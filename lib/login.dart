import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:itontiapp/accueil.dart';
import 'package:itontiapp/inscription.dart';
import 'package:itontiapp/verification.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String verification = "";
  TextEditingController mailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
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
                  controller: mailController,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.mail,
                      color: Colors.orange,
                    ),
                    hintText: "email",
                    /*prefix: Padding(
                        padding: EdgeInsets.all(4),
                        child: Text("+221"),
                      ),*/
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
                  decoration: InputDecoration(
                    hintText: "password",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                    icon: Icon(
                      Icons.lock,
                      color: Colors.orange,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Accueil();
                      // return Verification(phoneController.text);
                    }));

                    /* try {
                      UserCredential user = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                        email: mailController.text,
                        password: passwordController.text,
                      );
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Accueil();
                        // return Verification(phoneController.text);
                      }));
                    } catch (e) {
                      print(e);
                    }
                    */
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text(
                    "S'identifier",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
                Center(
                  child: Text("--Ou--"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return inscrire();
                        // return Verification(phoneController.text);
                      }));
                    },
                    child: Text(
                      "Créer un nouveau compte",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
