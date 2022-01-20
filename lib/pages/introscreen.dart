import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:oxa/pages/homepage.dart';

class Introscreen extends StatefulWidget {
  const Introscreen({Key? key}) : super(key: key);

  @override
  _IntroscreenState createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  // ignore: non_constant_identifier_names
  void _Endwelcomepage(context) {
    Navigator.pop(context);
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => Homepage()));
  }

  List<PageViewModel> getpages() {
    return [
      PageViewModel(
        image: Image.asset(
          "assets/images/movie.png",
          height: 300,
          width: 300,
        ),
        title: "Movie Tickets !",
        body: "Find Latest Movies and best Places to watch !",
        footer: Text("It's Limited Offer"),
        decoration: const PageDecoration(
          pageColor: Colors.amberAccent,
        ),
      ),
      PageViewModel(
        image: Image.asset(
          "assets/images/hamburger.png",
          height: 300,
          width: 300,
        ),
        title: "Order Food !",
        body: "Order your Food anytime from anywhere !",
        footer: Text("It's Yummy"),
        decoration: const PageDecoration(
          pageColor: Colors.green,
        ),
      ),
      PageViewModel(
        image: Image.asset(
          "assets/images/travel.png",
          height: 300,
          width: 300,
        ),
        title: "Travel World !",
        body: "Find best Places to Travel around the World !",
        footer: Text("Book your tickets as early as possible"),
        decoration: const PageDecoration(
          pageColor: Colors.orange,
        ),
      ),
      PageViewModel(
        image: Image.asset(
          "assets/images/discount.png",
          height: 300,
          width: 300,
        ),
        title: "Dicount !",
        body: "Get Maximun Discount on your favourite Brand !",
        footer: Text("Avail your Desireable Offer"),
        decoration: const PageDecoration(
          pageColor: Colors.blue,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      showDoneButton: true,
      showNextButton: true,
      showSkipButton: true,
      next: Text("Next"),
      done: Text("Done"),
      skip: Text("Skip"),
      onDone: () {
        _Endwelcomepage(context);
      },
      onSkip: () {
        _Endwelcomepage(context);
      },
      pages: getpages(),
    ));
  }
}
