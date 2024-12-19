import 'package:flutter/material.dart';

class Prudectimage extends StatelessWidget {
  const Prudectimage({
    super.key,
    required this.size,
    required this.image,
  });
  final String image;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: size.width * 0.8,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: size.width * .7,
              width: size.width * .7,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            ),
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: size.width * 0.75,
              width: size.width * 0.75,
            )
          ],
        ));
  }
}
