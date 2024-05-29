
//                    بسم الله الرحمن الرحيم

import 'package:flutter/material.dart';
import 'package:temoprary/contact.dart';
import 'package:temoprary/homepage.dart';

import 'main.dart';

class About extends StatelessWidget {
  const About({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("About us "),backgroundColor: Colors.blue,),
      body:  ListView(
        children: [
         Image.asset("images/flutters.png"),
          Image.asset("images/images (10).jpg"),
          Image.asset("images/flutters.png"),
          Image.asset("images/flutters.png"),
          Image.asset("images/images (10).jpg"),
          Image.asset("images/flutters.png"),
          Image.asset("images/images (10).jpg"),

        ],
      ),
    );
  }
}


