import 'package:flutter/material.dart';
import 'package:expo_bike/models/usaditos.dart';

class ExplorarTabUsaditos extends StatefulWidget {

  _ExplorarTabUsaditosState createState() => _ExplorarTabUsaditosState();
}

class _ExplorarTabUsaditosState extends State<ExplorarTabUsaditos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: ListView.builder(
        itemCount: (usaditos.length / 2).ceil(),
        itemBuilder: (context, idx) {
          return Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(54, 0, 54, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    width: 145,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/rectangle_grey.png'
                                        ),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          usaditos[idx].title,
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
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
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
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    width: 145,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/rectangle_grey.png',
                                        ),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          usaditos[idx + 1].title,
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
    );
  }
}