import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bee_challenge/src/ui/clipper/code.clipper.dart';
import 'package:flutter_bee_challenge/src/ui/clipper/request.clipper.dart';
import 'package:flutter_bee_challenge/src/ui/consts/app_color.const.dart';
import 'package:flutter_bee_challenge/src/ui/consts/text_styles.const.dart';

class CodePage extends StatelessWidget {
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
                  height: MediaQuery.of(context).size.height / 25 * 2,
                  width: width * 0.75,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Código de autorización',
                        style: TextStylesCons.titleStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'se te envió un mensaje de texto',
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
                  height: MediaQuery.of(context).size.height / 25 * 15,
                  width: width,
                  child: ClipPath(
                    clipper: CodeClipper(),
                    child: Container(
                      padding: EdgeInsets.only(left: 48.0),
                      color: AppColors.secondaryColor,
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: width * 0.6,
                          height: width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'Introduce tu código',
                                style: TextStylesCons.titleStyle,
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  SizedBox(
                                    width: 40.0,
                                    child: TextField(
                                      cursorColor: AppColors.primaryColor,
                                      keyboardType: TextInputType.number,
                                      maxLength: 1,
                                      maxLengthEnforced: true,
                                      style: TextStyle(fontSize: 24.0),
                                      decoration: InputDecoration(
                                        counterText: "",
                                        isDense: true,
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40.0,
                                    child: TextField(
                                      cursorColor: AppColors.primaryColor,
                                      keyboardType: TextInputType.number,
                                      maxLength: 1,
                                      maxLengthEnforced: true,
                                      style: TextStyle(fontSize: 24.0),
                                      decoration: InputDecoration(
                                        counterText: "",
                                        isDense: true,
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40.0,
                                    child: TextField(
                                      cursorColor: AppColors.primaryColor,
                                      keyboardType: TextInputType.number,
                                      maxLength: 1,
                                      maxLengthEnforced: true,
                                      style: TextStyle(fontSize: 24.0),
                                      decoration: InputDecoration(
                                        counterText: "",
                                        isDense: true,
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40.0,
                                    child: TextField(
                                      cursorColor: AppColors.primaryColor,
                                      keyboardType: TextInputType.number,
                                      maxLength: 1,
                                      maxLengthEnforced: true,
                                      style: TextStyle(fontSize: 24.0),
                                      decoration: InputDecoration(
                                        counterText: "",
                                        isDense: true,
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              FlatButton(
                                color: AppColors.primaryColor,
                                textColor: AppColors.accentColor,
                                child: Text('Registrar'),
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
