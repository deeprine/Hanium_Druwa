import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return _carouselSlider();
  }

  final imageSliders = [
    'assets/images/cimage1.jpg',
    'assets/images/cimage2.jpg',
    'assets/images/cimage3.jpg',
    'assets/images/cimage4.jpg',
    'assets/images/cimage5.jpg',
    'assets/images/cimage6.jpg',
  ];

  Widget _carouselSlider() {
    return Expanded(
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            initialPage: 1,
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items : imageSliders.map((i){
            return Builder(
              builder: (BuildContext context){
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.symmetric(horizontal:0.0),
                      decoration: BoxDecoration(
                          color : Colors.white
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                            i,
                            fit : BoxFit.none
                        ),
                      ),
                    ),
                    Center(
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
