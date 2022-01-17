import 'package:flutter/material.dart';
import 'package:oxa/pages/bottomnavbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("appbar"),
        ),
        body: Container(),
        bottomNavigationBar: Bottomnavbar(),
      ),
    );
  }
}
