import 'package:flutter/material.dart';

class MCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final curveOneR = Offset(0, size.height - 20);
    final curveTwoR = Offset(30, size.height - 20);
    path.quadraticBezierTo(curveOneR.dx, curveOneR.dy, curveTwoR.dx, curveTwoR.dy);

    final curveOneC = Offset(0, size.height - 20);
    final curveTwoC = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(curveOneC.dx, curveOneC.dy, curveTwoC.dx, curveTwoC.dy);

    final curveOneL = Offset(size.width, size.height - 20);
    final curveTwoL = Offset(size.width, size.height);
    path.quadraticBezierTo(curveOneL.dx, curveOneL.dy, curveTwoL.dx, curveTwoL.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
