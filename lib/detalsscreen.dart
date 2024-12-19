import 'package:flutter/material.dart';
import 'package:youssef_store/constents.dart';
import 'package:youssef_store/mudels/prudect.dart';
import 'package:youssef_store/widgets/detils/detils_bady.dart';

class DetilsScreen extends StatelessWidget {
  final Prudect prudect;
  const DetilsScreen({super.key, required this.prudect});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Detils Screen')),
        backgroundColor: Colors.white,
      ),
      body: DetilsBady(prudect:prudect,),
      backgroundColor: backround,
    );
  }
}
