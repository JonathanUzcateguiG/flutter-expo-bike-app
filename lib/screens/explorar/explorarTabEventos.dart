import 'package:flutter/material.dart';
import 'package:expo_bike/models/eventos.dart';
import 'package:expo_bike/utils/colors.dart';

class ExplorarTabEventos extends StatefulWidget {
  
  _ExplorarTabEventosState createState() => _ExplorarTabEventosState();
}

class _ExplorarTabEventosState extends State<ExplorarTabEventos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 238,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(
                    'assets/images/explorar_tab_logo.png'
                  ),
                  fit: BoxFit.cover
                ),
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 17, bottom: 17),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Piensa en tus objetivos.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Conoce anuncios y promociones únicas de ExpoBike y',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'mantente siempre activo.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: eventos.length,
              itemBuilder: (context, idx) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/explorar_inscribirme');
                        },
                        child: Image(
                          image: AssetImage(
                            eventos[idx].image,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            eventos[idx].title,
                            style: TextStyle(
                              color: AppColors.blackThirdColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            eventos[idx].subTitle,
                            style: TextStyle(
                              color: AppColors.blackThirdColor
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/right_icon.png',
                                ),
                                color: AppColors.greyBlackerColor,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}