import 'package:flutter/material.dart';
import 'package:itontiapp/newGroupe.dart';

class SectionIconButton extends StatefulWidget {
  SectionIconButton({Key? key}) : super(key: key);

  @override
  State<SectionIconButton> createState() => _SectionIconButtonState();
}

class _SectionIconButtonState extends State<SectionIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return compte();
                        // return Verification(phoneController.text);
                      }));
                    },
                    icon: Icon(
                      Icons.new_releases,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text('New')
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text('Payer')
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.light,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 5),
                Text('D??mo')
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.purple[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.details,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text('A propos')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
