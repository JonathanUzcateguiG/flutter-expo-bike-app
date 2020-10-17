import 'package:flutter/material.dart';
import 'package:expo_bike/models/products.dart';
import 'package:expo_bike/widgets/bottomFixedLabel.dart';
import 'package:expo_bike/widgets/menuTopHeader.dart';

class ExpoProductoScreen extends StatefulWidget {
  @override
  _ExpoProductoScreenState createState() => _ExpoProductoScreenState();
}

class _ExpoProductoScreenState extends State<ExpoProductoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MenuTopHeader(title: 'Nombre del puesto'),
          Padding(
            padding: EdgeInsets.only(top: 55, bottom: 40),
            child: ListView.builder(
              itemCount: (products.length / 2).ceil(),
              itemBuilder: (context, idx) {
                return Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(54, 0, 54, 10),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0)
                                  ),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(3.0),
                                    elevation: 1.5,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: 120,
                                            width: 145,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  products[idx * 2].image
                                                ),
                                                fit: BoxFit.cover
                                              )
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  products[idx * 2].title,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            products.length > idx * 2 + 1 ? Column(
                              children: <Widget>[
                                Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0)
                                  ),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(3.0),
                                    elevation: 1.5,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: 120,
                                            width: 145,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  products[idx * 2 + 1].image
                                                ),
                                                fit: BoxFit.cover
                                              )
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  products[idx * 2 + 1].title,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13
                                                  ),
                                                ),
                                              ],
                                            )
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ) : Column(
                              children: <Widget>[

                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }
            ),
          ),
          BottomFixedLabel()
        ],
      ),
    );
  }
}

