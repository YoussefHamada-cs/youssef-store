import 'package:flutter/cupertino.dart';
import 'package:youssef_store/constents.dart';
import 'package:youssef_store/detalsscreen.dart';
import 'package:youssef_store/widgets/home/product_card.dart';
import 'package:youssef_store/mudels/prudect.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  decoration: const BoxDecoration(
                      color: contanercolor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                ),
                ListView.builder(
                  itemCount: prudects.length,
                  itemBuilder: (context, index) => productcard(
                    prudects: prudects[index],
                    itemendex: index,
                    press: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => DetilsScreen(
                              prudect: prudects[index],
                            ),
                          ));
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
