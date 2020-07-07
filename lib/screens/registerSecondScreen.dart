import 'package:flutter/material.dart';
import 'package:expo_bike/services/storageservice.dart';
import 'package:expo_bike/utils/colors.dart';

enum SingingCharacter { lafayette, jefferson }

class RegisterSecondScreen extends StatelessWidget {

  SingingCharacter _character1 = SingingCharacter.lafayette;
  SingingCharacter _character2 = SingingCharacter.lafayette;
  // GoogleSignIn _googleSignIn;
  // FirebaseUser _user;

  // MainDialogScreen(FirebaseUser user, GoogleSignIn signIn) {
  //   _user = user;
  //   _googleSignIn = signIn;
  // }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService.getSecondRegisterLogo(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil('/mainSplashScreen', (Route<dynamic> route) => false);
                              },
                              child: Image(
                                image: AssetImage(
                                  'assets/images/close_icon.png'
                                ),
                                width: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Image(
                          image: NetworkImage(
                            snapshot.data
                          ),
                        )
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'TeoBike te ofrece un paquete de bienvenida a la hora de de comenzar el plan que incluye:',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/newImages/register_second_check.png'
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'KIT de bienvenida ',
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/newImages/register_second_check.png'
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Licencia FECOCI.',
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/newImages/register_second_check.png'
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Información preferencial de promociones y eventos.',
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/newImages/register_second_check.png'
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Envío gratis en compras mayores a ¢20.000 en la GAM.',
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/newImages/register_second_check.png'
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Tarjeta de descuentos en comercios afiliados.',
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/newImages/register_second_check.png'
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Rifas mensuales.',
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/newImages/register_second_check.png'
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Inscripción gratis para dos personas en evento a escoger',
                                style: TextStyle(
                                  fontSize: 14
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: Column(
                          children: [
                            Divider(

                            )
                          ],
                        )
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Expanded(
                          child: Text(
                            'Selecciona un plan para iniciar. Disponible solamente para usuarios TeoVIP. Podés cambiar o cancelar el plan en cualquier momento. ',
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.4
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  color: AppColors.greyDarkBoxColor,
                                  borderRadius: BorderRadius.circular(25)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'OPCIÓN 1',
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(2, 0, 2, 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 80) / 2,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Radio(
                                                    value: SingingCharacter.lafayette,
                                                    groupValue: _character1,
                                                    onChanged: (SingingCharacter value) {
                                                      _character1 = value;
                                                    },
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '¢2.000 / mes',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      Text(
                                                        '6 meses'
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Radio(
                                                    value: SingingCharacter.jefferson,
                                                    groupValue: _character1,
                                                    onChanged: (SingingCharacter value) {
                                                      _character1 = value;
                                                    },
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '¢2.000 / mes',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      Text(
                                                        '6 meses'
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  color: AppColors.greyDarkBoxColor,
                                  borderRadius: BorderRadius.circular(25)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'OPCIÓN 1',
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(2, 0, 2, 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 80) / 2,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Radio(
                                                    value: SingingCharacter.lafayette,
                                                    groupValue: _character2,
                                                    onChanged: (SingingCharacter value) {
                                                      _character2 = value;
                                                    },
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '¢4.500 / mes',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      Text(
                                                        '6 meses'
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Radio(
                                                    value: SingingCharacter.jefferson,
                                                    groupValue: _character2,
                                                    onChanged: (SingingCharacter value) {
                                                      _character2 = value;
                                                    },
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '¢3.000 / mes',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                      Text(
                                                        '6 meses'
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 20,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Expanded(
                      child: ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width - 50,
                        height: 60,
                        child: RaisedButton(
                          onPressed: () {
                            //this.onGoogleSignIn(context);
                            Navigator.of(context).pushNamedAndRemoveUntil('/mainSplashScreen', (Route<dynamic> route) => false);
                          },
                          color: AppColors.redColor,
                          textColor: Colors.white,
                          
                          child: const Text('COMENZAR ', style: TextStyle(fontSize: 17, color: Colors.white)),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.red,
                              width: 0),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      )
                    )
                  ),
                )
              ],
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