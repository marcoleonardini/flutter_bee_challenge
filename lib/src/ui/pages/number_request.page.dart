import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bee_challenge/src/ui/clipper/request.clipper.dart';
import 'package:flutter_bee_challenge/src/ui/consts/app_color.const.dart';
import 'package:flutter_bee_challenge/src/ui/consts/text_styles.const.dart';

class NumberRequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 3,
                  width: width * 0.75,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Requerimos tu número telefónico',
                        style: TextStylesCons.titleStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'se te enviará un código de verificación',
                        style: TextStylesCons.subtitle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 14,
                  width: width,
                  child: ClipPath(
                    clipper: RequestClipper(),
                    child: Container(
                      color: AppColors.secondaryColor,
                      child: Center(
                        child: SizedBox(
                          width: width * 0.65,
                          height: width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'Solo será para verificar corectamente tus datos',
                                style: TextStylesCons.subtitle,
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: TextField(
                                      cursorColor: AppColors.primaryColor,
                                      keyboardType: TextInputType.number,
                                      maxLength: 3,
                                      maxLengthEnforced: true,
                                      decoration: InputDecoration(
                                        counterText: "",
                                        isDense: true,
                                        labelStyle: TextStyle(
                                            color: AppColors.primaryColor),
                                        prefixText: ' + ',
                                        focusColor: AppColors.primaryColor,
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.primaryColor
                                                  .withOpacity(0.25)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextField(
                                      cursorColor: AppColors.primaryColor,
                                      keyboardType: TextInputType.number,
                                      maxLength: 10,
                                      decoration: InputDecoration(
                                        counterText: "",
                                        isDense: true,
                                        // labelText: 'Contraseña',
                                        labelStyle: TextStyle(
                                            color: AppColors.primaryColor),
                                        focusColor: AppColors.primaryColor,
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.primaryColor
                                                  .withOpacity(0.25)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              FlatButton(
                                color: AppColors.primaryColor,
                                textColor: AppColors.accentColor,
                                child: Text('Siguiente'),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25 * 2,
                  width: width * 0.75,
                  child: Text(
                    'Estas a unos pasos de terminar tu registro, nosotros te guíaremos',
                    style: TextStylesCons.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
