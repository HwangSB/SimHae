import 'package:flutter/material.dart';

class ShadowedWave extends StatelessWidget {
  final double height;
  final double strength;
  final bool reverse;
  final Widget child;

  ShadowedWave(
      {@required this.height,
      @required this.strength,
      this.reverse = false,
      @required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter(
        clipper: reverse
            ? ReverseWaveClipper(height: height, strength: strength)
            : WaveClipper(height: height, strength: strength),
      ),
      child: ClipPath(
        child: child,
        clipper: reverse
            ? ReverseWaveClipper(height: height, strength: strength)
            : WaveClipper(height: height, strength: strength),
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

class ReverseWaveClipper extends CustomClipper<Path> {
  double height = 0.0;
  double strength = 0.0;

  ReverseWaveClipper({@required this.height, @required this.strength});

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(0.0, size.height);
    path.lineTo(0.0, size.height - height + strength / 2.0);

    var firstControlPoint =
        Offset(size.width / 4.0, size.height - height + strength);
    var firstGivenPoint =
        Offset(size.width / 2.0, size.height - height + strength / 2.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstGivenPoint.dx, firstGivenPoint.dy);

    var secondControlPoint =
        Offset(size.width - size.width / 4.0, size.height - height);
    var secondGivenPoint =
        Offset(size.width, size.height - height + strength / 2.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondGivenPoint.dx, secondGivenPoint.dy);

    path.lineTo(size.width, height + strength / 2.0);
    path.lineTo(size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
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
