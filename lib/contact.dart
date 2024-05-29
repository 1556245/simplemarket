
//                    بسم الله الرحمن الرحيم

import 'package:flutter/material.dart';
import 'package:temoprary/homepage.dart';

import 'main.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("Contact us "),backgroundColor: Colors.blue,),
      body:  Column(
        children: [
          Text("Contact us in body",style: TextStyle(fontSize: 30),),
          Center(
            child: MaterialButton(child: Text("Go Home"),onPressed: () {
              Navigator.of(context).pushNamed("home");
            },
              color: Colors.purple,
              textColor: Colors.white,),
          )
        ],
      ),
    );
  }
}


