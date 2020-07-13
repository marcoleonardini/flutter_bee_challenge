import 'package:flutter/material.dart';
import 'package:flutter_bee_challenge/src/ui/consts/app_color.const.dart';
import 'package:flutter_bee_challenge/src/ui/consts/text_styles.const.dart';
import 'package:flutter_bee_challenge/src/ui/painters/login.painter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 2,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      'assets/icons/logo_dark.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 7,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/img/img_slide.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 6,
                        backgroundColor: Color(0xff503d2e),
                      ),
                      CircleAvatar(
                        maxRadius: 6,
                        backgroundColor: Color(0xffffCF60),
                      ),
                      CircleAvatar(
                        maxRadius: 6,
                        backgroundColor: Color(0xffffCF60),
                      ),
                      CircleAvatar(
                        maxRadius: 6,
                        backgroundColor: Color(0xffffCF60),
                      ),
                    ],
                  ),
                ),
                CustomPaint(
                  painter: LoginPainter(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 25 * 12,
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              height: 8.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text('Iniciar sesión',
                                  style: TextStylesCons.titleStyle),
                            ),
                            Column(
                              children: <Widget>[
                                TextField(
                                  cursorColor: AppColors.primaryColor,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Correo electrónico',
                                    labelStyle: TextStyle(
                                        color: AppColors.primaryColor),
                                    prefixIcon: Icon(
                                      Icons.person_outline,
                                      color: AppColors.primaryColor,
                                    ),
                                    focusColor: AppColors.primaryColor,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.primaryColor
                                              .withOpacity(0.25)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                TextField(
                                  cursorColor: AppColors.primaryColor,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Contraseña',
                                    labelStyle: TextStyle(
                                        color: AppColors.primaryColor),
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: AppColors.primaryColor,
                                    ),
                                    focusColor: AppColors.primaryColor,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.primaryColor
                                              .withOpacity(0.25)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '¿olvidaste tu contraseña?',
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            FlatButton(
                              color: AppColors.primaryColor,
                              textColor: AppColors.accentColor,
                              onPressed: () {},
                              child: Text(
                                'Iniciar sesión',
                              ),
                            ),
                            Text(
                              'Inicia sesión con tu cuenta',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 12.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: FlatButton(
                                    child: Text(
                                      'Facebook',
                                      style: TextStyle(
                                        color: AppColors.accentColor,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    color: Colors.blue.shade800,
                                    textColor: AppColors.accentColor,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Expanded(
                                  child: FlatButton(
                                    child: Text(
                                      'Google',
                                      style: TextStyle(
                                        color: AppColors.accentColor,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    color: Colors.red.shade600,
                                    textColor: AppColors.accentColor,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
