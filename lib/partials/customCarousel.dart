import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:vintech/globals.dart';

class CustomCarousel extends StatelessWidget {
  final List items;
  const CustomCarousel({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        height: 400.0,
        showIndicator: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        slideIndicator: CircularSlideIndicator(
          currentIndicatorColor: bd_color,
          indicatorBackgroundColor: bg_color.withOpacity(0.7),
        ),
      ),
      items: items.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cloudy.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: bg_color.withOpacity(0.8),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        )),
                    child: const ListTile(
                      title: Text('Demo Title'),
                      subtitle: Text('This is a simple card in Flutter.'),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
