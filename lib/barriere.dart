import 'package:flutter/material.dart';
import 'package:itontiapp/accueil.dart';
import 'package:itontiapp/dashboard.dart';
import 'package:itontiapp/goupe.dart';
import 'package:itontiapp/iconBoutton.dart';
import 'package:itontiapp/listeGroupe.dart';

class Barriere extends StatelessWidget {
  const Barriere({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Accueil",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage("images/profil.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Youssou Fall",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text("77 800 00 00 "),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 50,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Accueil",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.navigate_next),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.dashboard,
                  size: 50,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Tableau de bord",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext) => Dashboard()));
                    },
                    icon: Icon(Icons.navigate_next)),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 50,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Parametres",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.navigate_next),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  size: 50,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Deconnexion",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.navigate_next),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              //titleSection,
              searchSection,
              topContainer,
              SectionIconButton(),
              lineSection,
              subTitleSection,
              Groupe(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget lineSection = Container(
  color: Colors.grey[200],
  padding: EdgeInsets.all(4),
);

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
        'GROUPE',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  ),
);
Widget titleSection = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Accueil',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Container(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Icon(Icons.person),
          )),
    ],
  ),
);

Widget searchSection = Container(
  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
  decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.search,
        color: Colors.grey,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          'Rechercher',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Icon(
        Icons.mic_none,
        color: Colors.grey,
      ),
    ],
  ),
);

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
        'E-Tonti',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Developpes ton portefeuille en toute sécurité!',
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
    ],
  ),
);
