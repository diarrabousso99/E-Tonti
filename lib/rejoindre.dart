import 'package:flutter/material.dart';

class Rejoindre extends StatefulWidget {
  const Rejoindre({Key? key}) : super(key: key);

  @override
  _RejoindreState createState() => _RejoindreState();
}

class _RejoindreState extends State<Rejoindre> {
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
                      hintStyle:
                          TextStyle(color: Colors.blue.withOpacity(0.5))),
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
                  onPressed: () {},
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
}
