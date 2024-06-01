
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
      body:  Container(
        height: 300,
        child: PageView(
          controller: PageController(initialPage: 1),
          scrollDirection: Axis.horizontal,
          children: [
           Image.asset("images/shoes.jpeg",fit: BoxFit.cover,),
            Image.asset("images/images (10).jpg",fit: BoxFit.cover,),
            Image.asset("images/flutters.png",fit: BoxFit.cover,),


          ],
        ),
      ),
    );
  }
}


