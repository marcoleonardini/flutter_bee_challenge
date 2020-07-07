import 'package:flutter/rendering.dart';
import 'package:flutter_bee_challenge/src/ui/consts/app_color.const.dart';

class LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const constHeight = 0.25;
    const constWidth = 0.2;
    Paint paint = Paint()..color = AppColors.secondaryColor;

    Path path = Path();

    path.moveTo(0, size.height * constHeight);
    path.lineTo(size.width * constWidth, 0);
    path.lineTo(size.width * (1 - constWidth), 0);
    path.lineTo(size.width, size.height * constHeight);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
