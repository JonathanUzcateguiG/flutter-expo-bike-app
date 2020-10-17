import 'package:flutter/material.dart';
import 'package:expo_bike/services/storageservice.dart';
import 'package:expo_bike/utils/colors.dart';

class RegisterFirstScreen extends StatefulWidget {
  RegisterFirstScreen({Key key}) : super(key: key);

  @override
  _RegisterFirstScreenState createState() => _RegisterFirstScreenState();
}

class _RegisterFirstScreenState extends State<RegisterFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService.getLoginLogo(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: SingleChildScrollView(
              child: new Padding(
                padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          snapshot.data
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Elije tu disciplina',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.blackFirstColor
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: AppColors.greyOpacityColor
                          ),
                          bottom: BorderSide(
                            color: AppColors.greyOpacityColor
                          )
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(55, 10, 20, 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/register_second');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FutureBuilder(
                                future: StorageService.getRegisterFirstBikeImage(),
                                builder: (context, AsyncSnapshot<String> snapshotBike) {
                                  if (snapshotBike.hasData) {
                                    return Image(
                                      image: NetworkImage(
                                        snapshotBike.data
                                      ),
                                    );
                                  } else {
                                    return Text('');
                                  }
                                },
                              ),
                              GestureDetector(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/right_icon.png'
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Proximamente…',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.blackFirstColor
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: AppColors.greyOpacityColor
                          ),
                          bottom: BorderSide(
                            color: AppColors.greyOpacityColor
                          )
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(55, 10, 20, 15),
                        child: GestureDetector(
                          onTap: () {
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FutureBuilder(
                                future: StorageService.getRegisterFirstTriImage(),
                                builder: (context, AsyncSnapshot<String> snapshotBike) {
                                  if (snapshotBike.hasData) {
                                    return Image(
                                      image: NetworkImage(
                                        snapshotBike.data
                                      ),
                                    );
                                  } else {
                                    return Text('');
                                  }
                                },
                              ),
                              GestureDetector(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/right_icon.png'
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.greyOpacityColor
                          )
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(55, 10, 20, 15),
                        child: GestureDetector(
                          onTap: () {
                          },
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FutureBuilder(
                              future: StorageService.getRegisterFirstTrailImage(),
                              builder: (context, AsyncSnapshot<String> snapshotBike) {
                                if (snapshotBike.hasData) {
                                  return Image(
                                    image: NetworkImage(
                                      snapshotBike.data
                                    ),
                                  );
                                } else {
                                  return Text('');
                                }
                              },
                            ),
                            GestureDetector(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/right_icon.png'
                                ),
                              ),
                            )
                          ],
                        ),  
                        )
                      ),
                    ),
                  ],
                ),
              )
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(AppColors.redColor)
                ),
              ),
            ),
          );
        }
      },
    );
  }
}