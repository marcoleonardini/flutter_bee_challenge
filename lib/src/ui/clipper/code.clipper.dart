import 'package:flutter/cupertino.dart';

class CodeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width * 0.5, 0)
      ..lineTo(size.width * 0.10, size.height * 0.25)
      ..lineTo(size.width * 0.10, size.height * 0.75)
      ..lineTo(size.width * 0.5, size.height)
      ..lineTo(size.width, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
