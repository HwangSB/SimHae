import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'dart:math';

class AnimatedWave extends StatelessWidget {
  final Color color;
  final double height;
  final double speed;
  final double offset;

  AnimatedWave({this.color, this.height, this.speed, this.offset = 0.0});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: ControlledAnimation(
            playback: Playback.LOOP,
            duration: Duration(milliseconds: (5000 / speed).round()),
            tween: Tween(begin: 0.0, end: 2 * pi),
            builder: (context, value) {
              return CustomPaint(
                foregroundPainter: CurvePainter(color: color, value: value + offset),
              );
            }),
      );
    });
  }
}

class CurvePainter extends CustomPainter {
  final Color color;
  final double value;

  CurvePainter({this.color, this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = this.color;
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}