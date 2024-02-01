import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product Layout Demo Homepage'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("6488020")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox1(
                name: "iPhone",
                description: "iPhone is the stylist phone ever",
                price: 1000,
                image: "1.jpg"),
            ProductBox1(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever",
                price: 800,
                image: "2.jpg"),
            ProductBox1(
                name: "Laptop",
                description: "Laptop is most productive development tool",
                price: 2000,
                image: "3.jpg"),
            ProductBox2(
                name: "Tablet",
                description:
                    "Tablet is the most useful device ever for meeting",
                price: 1500,
                imgUrl:
                    "https://images.samsung.com/is/image/samsung/p6pim/th/sm-x810nzaathl/gallery/th-galaxy-tab-s9-plus-wifi-x810-sm-x810nzaathl-thumb-537869448"),
            ProductBox2(
                name: "Pendrive",
                description: "Pendrive is useful storage medium",
                price: 100,
                imgUrl:
                    "https://www.bigbasket.com/media/uploads/p/l/40198093_2-hp-32-gb-pendrive-usb-31.jpg"),
            ProductBox2(
                name: "Floppy Drive",
                description: "Floppy drive is useful rescue storage medium",
                price: 20,
                imgUrl:
                    "https://down-th.img.susercontent.com/file/edf370419da818607745ebffd9aa93bf")
          ],
        ));
  }
}

class ProductBox1 extends StatelessWidget {
  ProductBox1(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;

  final String description;

  final int price;

  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                  "assets/appimages/" + image, // images from local directory

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
                          Text("Price: " + this.price.toString()),
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
      required this.price,
      required this.imgUrl})
      : super(key: key);

  final String name;

  final String description;

  final int price;

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
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}