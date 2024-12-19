import 'package:flutter/material.dart';
import 'package:youssef_store/mudels/prudect.dart';

import 'package:youssef_store/widgets/detils/color_dot.dart';
import 'package:youssef_store/widgets/detils/prudect_image.dart';

class DetilsBady extends StatelessWidget {
  final Prudect prudect;
  const DetilsBady({super.key, required this.prudect});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Prudectimage(
                    size: size,
                    image: prudect.image,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                        fillcolor: Colors.blue,
                        isSelect: true,
                      ),
                      ColorDot(
                        fillcolor: Colors.red,
                        isSelect: false,
                      ),
                      ColorDot(
                        fillcolor: Colors.grey,
                        isSelect: false,
                      ),
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    prudect.title,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                 Text(
                  'السعر: ${prudect.price}',
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.amber,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            )),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Text(
            prudect.descarption,
            style: const TextStyle(color: Colors.white, fontSize: 19),
          ),
        )
      ],
    );
  }
}
