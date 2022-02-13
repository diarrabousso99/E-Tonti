import 'package:flutter/material.dart';
import 'package:itontiapp/accueil.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:pinput/pin_put/pin_put_state.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_auth/firebase_auth.dart';

class Verification extends StatefulWidget {
  String phone = "";
  Verification(this.phone);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final GlobalKey<ScaffoldState> keyState = GlobalKey<ScaffoldState>();

  String verification = "";
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color.fromRGBO(43, 46, 66, 1),
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: const Color.fromRGBO(126, 203, 224, 1),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyState,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Code Verification"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Center(
              child: Text(
                "Verifier +221 ${widget.phone}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: PinPut(
                fieldsCount: 6,
                withCursor: true,
                textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
                eachFieldWidth: 55.0,
                eachFieldHeight: 55.0,
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedFieldDecoration: pinPutDecoration,
                selectedFieldDecoration: pinPutDecoration,
                followingFieldDecoration: pinPutDecoration,
                pinAnimationType: PinAnimationType.fade,
                onSubmit: (pin) async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: verification, smsCode: pin))
                        .then(
                      (value) async {
                        if (value.user != null) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Accueil();
                          }));
                        }
                      },
                    );
                  } catch (e) {
                    FocusScope.of(context).unfocus();
                    keyState.currentState!
                        .showBottomSheet((context) => Text("Invalide code"));
                  }
                }),
          )
        ],
      ),
    );
  }

  _verifiactionPhone() async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: "+221${widget.phone}",
          verificationCompleted: (PhoneAuthCredential credential) async {
            await FirebaseAuth.instance
                .signInWithCredential(credential)
                .then((value) {
              if (value.user != null) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Accueil();
                }));
              }
            });
          },
          verificationFailed: (FirebaseAuthException e) {
            print(e.message);
          },
          codeSent: (String verificationId, int? resendToken) {
            setState(() {
              verification = verificationId;
              print("votre code");
              print(resendToken);
            });
          },
          codeAutoRetrievalTimeout: (String verificationId) async {
            setState(() {
              verification = verificationId;
            });
          },
          timeout: Duration(seconds: 60));

      print("connexion reusssi");
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verifiactionPhone();
  }
}
