import 'package:flutter/material.dart';

class Wave extends StatefulWidget {
  const Wave({Key? key}) : super(key: key);

  @override
  _WaveState createState() => _WaveState();
}

class _WaveState extends State<Wave> {
  bool value1 = false;
  bool value2 = false;
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
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(5),
                  child: ClipRect(
                    child:
                        Image.asset("images/wave.png", width: 130, height: 150),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Checkbox(
                      value: value1,
                      onChanged: (value) {
                        setState(() {
                          this.value1 = value!;
                        });
                      },
                    ),
                    Text('Wave'),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: ClipRect(
                    child: Image.asset("images/orange.png",
                        width: 130, height: 150),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Checkbox(
                      value: value2,
                      onChanged: (value) {
                        setState(() {
                          this.value2 = value!;
                        });
                      },
                    ),
                    Text('Orange Money'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
