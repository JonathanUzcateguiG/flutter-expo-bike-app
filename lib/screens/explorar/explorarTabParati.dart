import 'package:flutter/material.dart';
import 'package:expo_bike/models/eventos.dart';

class ExplorarTabParati extends StatefulWidget {
  _ExplorarTabParatiState createState() => _ExplorarTabParatiState();
}

class _ExplorarTabParatiState extends State<ExplorarTabParati> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: ListView.builder(
      itemCount: (eventos.length / 2).ceil(),
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
                                  width: (MediaQuery.of(context).size.width - 108 - 10) / 2,
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
                                        eventos[idx].title,
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
                    eventos.length > idx * 2 + 1 ? Column(
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
                                        eventos[idx * 2 + 1].title,
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
    )
    );
  }
}