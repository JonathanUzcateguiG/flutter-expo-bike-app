import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:expo_bike/utils/colors.dart';
import 'package:expo_bike/utils/imagePickderHandler.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as Path;
class MyDataScreen extends StatefulWidget {

  // final VoidCallback onItemTaped;
  final Function(int) onItemPressed;

  MyDataScreen({@required this.onItemPressed});

  _MyDataScreenState createState() => _MyDataScreenState();
}

class _MyDataScreenState extends State<MyDataScreen> with TickerProviderStateMixin, ImagePickerListener {

  String url;
  AnimationController _controller;
  ImagePickerHandler imagePicker;

  void initState() {
    super.initState();

    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500)
    );

    imagePicker = new ImagePickerHandler(this, _controller);
    imagePicker.init();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<String> uploadFile(File _image) async {
    StorageReference ref = FirebaseStorage.instance.ref().child('images').child('uploads').child('avatar').child('${Path.basename(_image.path)}');

    StorageUploadTask uploadTask = await ref.putFile(_image);

    await uploadTask.onComplete;

    return await ref.getDownloadURL();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Perfil',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 35),
                            child: GestureDetector(
                            onTap: () {
                              widget.onItemPressed(5);
                            },
                            child: Image(
                              image: AssetImage(
                                'assets/images/settings_red_icon.png'
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          'assets/images/crown_red.png',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromRGBO(150, 153, 156, 1),
                          child: new Center(
                            child: url == null ? 
                              CircleAvatar(
                                radius: 30.0,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  'assets/images/user_avatar.png'
                                ),
                              )
                              :
                              CircleAvatar(
                                radius: 30.0,
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(
                                  url
                                )
                              )
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 35, top: 25),
                            child: GestureDetector(
                            onTap: () {
                              widget.onItemPressed(4);
                            },
                            child: Image(
                              image: AssetImage(
                                'assets/images/left_icon.png'
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Nombre',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Miembro desde Junio 2020',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/cuenta_red_icon.png'
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Mis Datos',
                          style: TextStyle(
                            color: AppColors.redColor
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 3),
                    child: new Material(
                      elevation: 2.0,
                      child: new Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                imagePicker.showDialog(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cambiar foto de Perfil',
                                      style: TextStyle(
                                        color: AppColors.redColor
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Nombre',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Escriba su nombre y apellido',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.greyBlackColor
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Fecha de Nacimiento',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '28 / 10 / 1999',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.redColor
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'País',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    'Costa Rica',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.redColor
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Teléfono',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Escriba número de teléfono',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.greyBlackColor
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Membresía',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Opción 2 + Licencia',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.redColor
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonTheme(
                                  minWidth: MediaQuery.of(context).size.width / 2 -20,
                                  height: 35,
                                  child: RaisedButton(
                                    onPressed: () {
                                      //this.onGoogleSignIn(context);
                                      Navigator.of(context).pushNamedAndRemoveUntil('/mainSplashScreen', (Route<dynamic> route) => false);
                                    },
                                    color: AppColors.redColor,
                                    textColor: Colors.white,
                                    child: const Text('GUARDAR CAMBIOS ', style: TextStyle(fontSize: 14, color: Colors.white)),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.red,
                                        width: 0),
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                      ),
                    )
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  userImage(File _image)  async {
    var _url = await uploadFile(_image);
    setState(() {
      this.url = _url;
    });
  }
}