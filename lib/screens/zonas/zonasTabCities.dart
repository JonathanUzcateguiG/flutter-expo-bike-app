import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';
import 'package:expo_bike/models/zonas.dart';

class ZonasTabCities extends StatefulWidget {

  final List<Zona> zonasList;
  final Function(int, int) onItemPressed;

  ZonasTabCities({@required this.zonasList, @required this.onItemPressed});

  _ZonasTabCitiesState createState() => _ZonasTabCitiesState();
}

class _ZonasTabCitiesState extends State<ZonasTabCities> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 100, left: 20, right: 25),
      child: ListView.builder(
        itemCount: widget.zonasList.length,
        itemBuilder: (context, idx) {
          return GestureDetector(
            onTap: () {
              widget.onItemPressed(6, idx);
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage(
                        widget.zonasList[idx].image
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      widget.zonasList[idx].title,
                      style: TextStyle(
                        color: AppColors.greyBlackerColor,
                        fontSize: 16
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              'assets/images/right_icon.png'
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Divider(
                    color: AppColors.zonasBorderColor,
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}