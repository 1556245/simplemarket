//                    بسم الله الرحمن الرحيم

import 'package:flutter/material.dart';
import 'package:temoprary/details.dart';
import 'package:temoprary/main.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  List items = [
    {
      "icon": Icons.laptop,
      "text": "laptop",
    },
    {
      "icon": Icons.mobile_screen_share,
      "text": "mobile",
    },
    {
      "icon": Icons.card_giftcard,
      "text": "gift",
    },
    {
      "icon": Icons.bike_scooter,
      "text": "bike",
    },
    {
      "icon": Icons.electric_car,
      "text": "car",
    }
  ];
  List Images =[
  {"source" : "images/transparent.jpg" ,
  "price" : "350" ,
    "description" : "describe watch",
    "text" : "watch"
  },
    {"source" : "images/noback.jpg" ,
      "price" : "150" ,
      "description" : "describe headphone ",
    "text" : "watch"
    },
    {"source" : "images/noback.jpg" ,
      "price" : "250" ,
      "description" : "describe headphone",
      "text" : "watch"
    },
    {"source" : "images/transparent.jpg" ,
      "price" : "350" ,
      "description" : "describe watch",
      "text" : "watch"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: formstate,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*",),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "*"),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "*"),
          ],
          iconSize: 40,
          selectedItemColor: Colors.orange,

        ),
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
              Container(
                  height: 110,
                  child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  // Half of width or height to make it circular
                                  color: Colors.grey[200],
                                ),
                                child: Icon(
                                  items[index]['icon'],
                                  size: 30,
                                )),
                            Text(
                              items[index]['text'],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      );
                    },
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "Best Selling",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 230),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Images.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>itemsDetails()));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.grey[200],
                              child: Image.asset(
                                Images[index]["source"],
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              )),
                          Text(
                            Images[index]["text"],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(Images[index]["description"],
                              style: TextStyle(fontSize: 15, color: Colors.grey)),
                          Text(Images[index]["price"],
                              style:
                              TextStyle(fontSize: 15, color: Colors.orange)),
                        ],
                      ),
                    ),
                  );
                },



              )
            ],
          ),
        ));
  }
}