import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';

class ExplorarInscribirme extends StatefulWidget {
  @override
  _ExplorarInscribirmeState createState() => _ExplorarInscribirmeState();
}

class _ExplorarInscribirmeState extends State<ExplorarInscribirme> {
  bool favorite_flag = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    favorite_flag = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/left_icon.png'
                      ),
                      color: AppColors.greyBlackerColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        favorite_flag = !favorite_flag;
                      });
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/favoritos_background_icon.png'
                      ),
                      color: favorite_flag == true ? AppColors.redColor : AppColors.greyfavoritosColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/explorar_inscribirme_background.png',
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 65),
              child: Column(
                children: <Widget>[
                  Divider(

                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 43),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage(
                        'assets/images/explorar_inscribirme_information_icon.png'
                      ),
                      color: AppColors.greyDarkerColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Más información',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.greyInformationColor
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 166,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: RaisedButton(
                onPressed: () {
                },
                color: AppColors.redFirstColor,
                textColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(110, 23, 110, 23),
                child: const Text('INSCRIBIRME', style: TextStyle(fontSize: 18, color: Colors.white)),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.red,
                    width: 0),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            SizedBox(
              height: 130,
            )
          ],
        ),
      ),
    );
  }
}