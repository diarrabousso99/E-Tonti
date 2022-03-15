import 'package:flutter/material.dart';

void main() {
  runApp(compte());
}

class compte extends StatelessWidget {
  compte({Key? key}) : super(key: key);

  TextEditingController _nom_groupe = TextEditingController();
  TextEditingController _mise = TextEditingController();
  TextEditingController _nombre = TextEditingController();
  TextEditingController _type = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Creer un groupe"),
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
                  height: 50,
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
                  controller: _nom_groupe,
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    icon: Icon(Icons.perm_identity, color: Colors.orange),
                    hintText: "Nom Tontine",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _mise,
                  decoration: InputDecoration(
                    icon: Icon(Icons.money, color: Colors.orange),
                    hintText: "Mise",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _nombre,
                  decoration: InputDecoration(
                    icon: Icon(Icons.people, color: Colors.orange),
                    hintText: "Nombre Inscrits",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _type,
                  decoration: InputDecoration(
                    icon: Icon(Icons.date_range, color: Colors.orange),
                    hintText: "Mensuel ou hebdomadaire",
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text("Valider", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
