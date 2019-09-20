import 'package:flutter/material.dart';
import 'package:trevel_app/scr/models/places.dart';

import 'image_card.dart';


class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
 List<Place> images = [
  Place(place: 'Austia', image: '1.jpg', days: 7),
   Place(place: 'India', image: '2.jpg', days: 12),
   Place(place: 'Bali', image: '3.jpg', days: 3),
   Place(place: 'Austia', image: '1.jpg', days: 7),
   Place(place: 'India', image: '2.jpg', days: 12),
   Place(place: 'Bali', image: '3.jpg', days: 3),

 ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 260,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: images[index],
                name: images[index].place,
                days: images[index].days,
                picture: images[index].image,
              );
            }));
  }
}


