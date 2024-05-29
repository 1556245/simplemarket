//                    بسم الله الرحمن الرحيم

import 'package:flutter/material.dart';
import 'package:temoprary/About.dart';
import 'package:temoprary/main.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: formstate,
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: InputBorder.none,
                        fillColor: Colors.grey[200],
                        filled: true),
                  )),
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.menu,
                        size: 30,
                      ))
                ],
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "catagories",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            // Half of width or height to make it circular
                            color: Colors.grey[200],
                          ),
                          child: Icon(
                            Icons.laptop,
                            size: 30,
                          )),
                      Text("laptop",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(20),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            // Half of width or height to make it circular
                            color: Colors.grey[200],
                          ),
                          child: Icon(
                            Icons.mobile_screen_share,
                            size: 30,
                          )),
                      Text("mobile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(20),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            // Half of width or height to make it circular
                            color: Colors.grey[200],
                          ),
                          child: Icon(
                            Icons.card_giftcard,
                            size: 30,
                          )),
                      Text("gifts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(20),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            // Half of width or height to make it circular
                            color: Colors.grey[200],
                          ),
                          child: Icon(
                            Icons.electric_bike_outlined,
                            size: 40,
                          )),
                      Text("bike",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),)
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
