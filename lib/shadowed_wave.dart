import 'package:flutter/material.dart';

class ShadowedWave extends StatelessWidget {
  final Widget child;
  final double height;
  final double strength;

  ShadowedWave(
      {@required this.child, @required this.height, @required this.strength});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter(
        clipper: WaveClipper(height: height, strength: strength),
      ),
      child: ClipPath(
        child: child,
        clipper: WaveClipper(height: height, strength: strength),
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final CustomClipper<Path> clipper;
  final Shadow shadow = Shadow(
    blurRadius: 6.0,
    offset: Offset(0, 3.0),
    color: Color(0x29000000),
  );

  WavePainter({@required this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

  @override
  bool hitTest(Offset position) {
    return false;
  }
}

class WaveClipper extends CustomClipper<Path> {
  double height = 0.0;
  double strength = 0.0;

  WaveClipper({@required this.height, @required this.strength});

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, height - strength / 2.0);

    var firstControlPoint = Offset(size.width / 4.0, height - strength);
    var firstGivenPoint = Offset(size.width / 2.0, height - strength / 2.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstGivenPoint.dx, firstGivenPoint.dy);

    var secondControlPoint = Offset(size.width - size.width / 4.0, height);
    var secondGivenPoint = Offset(size.width, height - strength / 2.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondGivenPoint.dx, secondGivenPoint.dy);

    path.lineTo(size.width, height - strength / 2.0);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
