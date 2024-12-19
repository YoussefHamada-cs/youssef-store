import 'package:flutter/material.dart';
import 'package:youssef_store/constents.dart';
import 'package:youssef_store/widgets/home/home_body.dart';

class HomeScareen extends StatelessWidget {
  const HomeScareen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: backround,
      body:HomeBody(),
      

    
      appBar: AppBar(
        backgroundColor: Colors.blue,
       // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
       // elevation: 0,
        title: Text('مرحبا بكم في متجرنا'),
        centerTitle: true,
      ),
    );
  }
}
