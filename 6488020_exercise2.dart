import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Favorite page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.teal[200], //background colour
        appBar: AppBar(title: Text("Favorite")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
             ProductBox1(
                 name: "Japanese Salmon Sushi",
                 description: "Salmon Maki the most classic looking sushi. Raw fresh salmon is wrapped in sticky sushi rice and crispy seaweed.",
                 categories: "Japanese Food",                 
               imgUrl:
                    "https://www.sushiya.in/cdn/shop/products/10.FreshSalmonMaki.jpg?v=1629102974"),
             ProductBox1(
                 name: "Chicken Biriyani",
                 description: "Chicken biryani is a delicious dish that's typically reserved for special occasions such as weddings, parties, or holidays.",
                 categories: "Indian Food",
                 imgUrl:
                    "https://images.slurrp.com/prod/recipe_images/transcribe/main%20course/Hyderabadi-Chicken-Biryani.webp?impolicy=slurrp-20210601&width=1200&height=675"),
             ProductBox1(
                 name: "Pad Thai",
                 description: "Pad Thai is a traditional Thai dish and is one of the most famous street food in the world",
                 categories: 'Thai Food',
                 imgUrl:
                    "https://hot-thai-kitchen.com/wp-content/uploads/2019/09/pad-thai-blog.jpg"),
            ProductBox2(
                name: "Lasagna",
                description:
                    "Lasagna is the name of one of the oldest and best-known pasta shapes.",
                categories: "Italian Food",
                imgUrl:
                    "https://static01.nyt.com/images/2023/08/31/multimedia/RS-Lasagna-hkjl/RS-Lasagna-hkjl-superJumbo.jpg"),
            ProductBox2(
                name: "Panna Cotta",
                description: "It is One of the simplest desserts in the world: a pudding literally “cooked cream”.",
                categories: "Italian Dessert",
                imgUrl:
                    "https://www.bigbasket.com/media/uploads/recipe/w-l/2867_2_1.jpg"),
            ProductBox2(
                name: "Macaron",
                description: "A macaron is a meringue-based sandwich cookie fillings with buttercream, ganache, or fruit-based jam",
                categories: "French Dessert",
                imgUrl:
                    "https://images.immediate.co.uk/production/volatile/sites/2/2022/05/Macarons-fb56db8.jpg?resize=768,574")
          ],
        ));
  }
}

class ProductBox1 extends StatelessWidget {
  ProductBox1(
      {Key? key,
      required this.name,
      required this.description,
      required this.categories,
      required this.imgUrl})
      : super(key: key);

  final String name;

  final String description;

  final String categories;

  final String imgUrl;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(imgUrl, // images from local directory

                  height: 100,
                  width: 100),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                           Text("Categories: " + this.categories.toString()),
                        ],
                      )))
            ])));
  }
}

class ProductBox2 extends StatelessWidget {
  ProductBox2(
      {Key? key,
      required this.name,
      required this.description,
      required this.categories,
      required this.imgUrl})
      : super(key: key);

  final String name;

  final String description;

  final String categories;

  final String imgUrl;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(imgUrl, // images from local directory

                  height: 100,
                  width: 100),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                           Text("Categories: " + this.categories.toString()),
                        ],
                      )))
            ])));
  }
}