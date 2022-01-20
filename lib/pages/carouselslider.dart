import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carouselslid extends StatefulWidget {
  const Carouselslid({Key? key}) : super(key: key);

  @override
  _CarouselslidState createState() => _CarouselslidState();
}

class _CarouselslidState extends State<Carouselslid> {
  List<String> imageList = [
    "https://www.pngmart.com/files/10/Rolls-Royce-PNG-HD.png",
    "https://i.pinimg.com/originals/01/47/6c/01476cd7f3a11d4e9d314c8ef398d938.png",
    "https://www.pngplay.com/wp-content/uploads/1/White-Lexus-PNG-HD-Quality.png",
    "https://i.pinimg.com/originals/05/02/da/0502da25d3a9640ad861574a516a4611.png",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageList
          .map(
            (e) => ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    e,
                    height: 200,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        height: 150,
      ),
    );
  }
}
