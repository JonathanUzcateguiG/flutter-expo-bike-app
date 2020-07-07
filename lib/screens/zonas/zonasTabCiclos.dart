import 'package:flutter/material.dart';
import 'package:expo_bike/models/zonas.dart';

class ZonasTabCiclos extends StatefulWidget {
  @override
  _ZonasTabCiclosState createState() => _ZonasTabCiclosState();
}

class _ZonasTabCiclosState extends State<ZonasTabCiclos> {

  bool ciclosSubMenu;

  @override
  void initState() {
    super.initState();

    ciclosSubMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    return ciclosSubMenu == false ? ZonasTabCiclosWidget(onItemPressed: () {
      setState(() {
        ciclosSubMenu = true;
      });
    },) : ZonasTabCiclosSubWidget(onItemPressed: () {
      setState(() {
        ciclosSubMenu = false;
      });
    },);
  }
}

class ZonasTabCiclosWidget extends StatelessWidget {
  final Function onItemPressed;

  ZonasTabCiclosWidget({@required this.onItemPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: ListView.builder(
        itemCount: (ciclos.length / 2).ceil(),
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
                          GestureDetector(
                            onTap: () {
                              onItemPressed();
                            },
                            child: Container(
                              height: 170,
                              width: (MediaQuery.of(context).size.width - 108 - 10) / 2,
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
                                            ciclos[idx * 2].image
                                          ),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            ciclos[idx * 2].title,
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
                      ciclos.length > idx * 2 + 1 ? Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              onItemPressed();
                            },
                            child: Container(
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
                                            ciclos[idx * 2 + 1].image
                                          ),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            ciclos[idx * 2 + 1].title,
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
                          )
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
    );
  }
}

class ZonasTabCiclosSubWidget extends StatelessWidget {
  final Function onItemPressed;

  ZonasTabCiclosSubWidget({@required this.onItemPressed});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
        ],
      ),
    );
  }
}