import 'package:flutter/material.dart';

class Free extends StatefulWidget {
  const Free({Key? key}) : super(key: key);

  @override
  _FreeState createState() => _FreeState();
}

class _FreeState extends State<Free> {
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
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(5),
                  child: ClipRect(
                    child:
                        Image.asset("images/free.png", width: 130, height: 150),
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
                    Text('Free'),
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
                    child: Image.asset("images/e_money.png",
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
                    Text('E-Money'),
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
