import 'package:flutter/material.dart';

class RequestClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height * 0.30)
      ..lineTo(size.width * 0.30, 0)
      ..lineTo(size.width * 0.70, 0)
      ..lineTo(size.width, size.height * 0.30)
      ..lineTo(size.width, size.height * 0.70)
      ..lineTo(size.width * 0.70, size.height)
      ..lineTo(size.width * 0.30, size.height)
      ..lineTo(0, size.height * 0.70);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
