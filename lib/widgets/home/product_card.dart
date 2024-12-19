import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youssef_store/detalsscreen.dart';
import 'package:youssef_store/mudels/prudect.dart';

class productcard extends StatelessWidget {
  const productcard({
    super.key,
    required this.prudects,
    required this.itemendex, required this.press,
  });
  final int itemendex;
  final Prudect prudects;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size sizeapp = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(20),
      height: 190,
      child: InkWell(
        onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => DetilsScreen(prudect: prudects,),
         ) ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 35), blurRadius: 50, color: Colors.grey)
                  ]),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 140,
                  width: 200,
                  child: Image.asset(
                    prudects.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 150,
                  width: sizeapp.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // ignore: prefer_const_constructors
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          prudects.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(prudects.subtitle),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Text('السعر ${prudects.price}')),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
