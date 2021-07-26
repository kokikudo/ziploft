import 'package:flutter/material.dart';
import 'package:ziploft/constraints.dart';

class AmenityCard extends StatelessWidget {
  const AmenityCard({Key? key, required this.iconImage, required this.name})
      : super(key: key);

  final Image iconImage;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 70,
      width: 70,
      decoration:
          BoxDecoration(color: Colors.white, boxShadow: [kBubbleShadowStyle()]),
      child: Center(
        child: Column(
          children: [
            iconImage,
            const SizedBox(
              height: 5.0,
            ),
            Text(
              name,
              style: kDetailsCardTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
