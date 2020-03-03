import 'dart:math';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class AnimatedWave extends StatelessWidget {
  final Color color;
  final double height;
  final double strength;
  final double speed;
  final double offset;

  AnimatedWave(
      {this.color,
      this.height = 0.0,
      this.strength,
      this.speed,
      this.offset = 0.0});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: strength,
          width: constraints.biggest.width,
          child: ControlledAnimation(
            playback: Playback.LOOP,
            duration: Duration(milliseconds: (5000 / speed).round()),
            tween: Tween(begin: 0.0, end: 2 * pi),
            builder: (context, value) {
              return CustomPaint(
                foregroundPainter: CurvePainter(
                    color: color, height: height, value: value + offset),
              );
            },
          ),
        );
      },
    );
  }
}

class CurvePainter extends CustomPainter {
  final Color color;
  final double height;
  final double value;

  CurvePainter({this.color, this.height, this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = this.color;
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1) - height;
    final controlPointY = size.height * (0.5 + 0.4 * y2) - height;
    final endPointY = size.height * (0.5 + 0.4 * y3) - height;

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