import 'package:flutter/material.dart';

class itemsDetails extends StatefulWidget {
  const itemsDetails({super.key});

  @override
  State<itemsDetails> createState() => _itemsDetailsState();
}

class _itemsDetailsState extends State<itemsDetails> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      endDrawer : Drawer(),
        appBar : AppBar(backgroundColor: Colors.grey[200],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Shopping "),
          Text("Market",style: TextStyle(color: Colors.orange),),

          ],),
        elevation: 0.0,),
        body: Text("mohamed")
    );

  }
}
