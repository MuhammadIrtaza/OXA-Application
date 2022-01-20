import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:oxa/pages/introscreen.dart';

import 'package:oxa/pages/signinpage.dart';

class Loginpage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  movetoHome(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => Introscreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      //color: Colors.white,
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset("assets/images/img.png"),
            // Text(
            //   "o x a",
            //   style: GoogleFonts.dongle(
            //     textStyle:
            //         TextStyle(fontWeight: FontWeight.bold, fontSize: 100),
            //   ),
            // ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 42),
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can not be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can not be empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: 280,
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[300]),
                ),
                onPressed: () {
                  movetoHome(context);
                },
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Signinpage()));
              },
              child: Text(
                "SIGN UP NOW",
                style: TextStyle(
                    color: Colors.blue[300], fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                "Powered by Flutter",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
