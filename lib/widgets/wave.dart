// import 'package:flutter/widgets.dart';

// enum WavePosition {
//   left,
//   top,
//   right,
//   bottom,
// }

// class Wave extends StatelessWidget {
//   final WavePosition wavePosition;
//   final double waveHeight;
//   final List<double> wavePoints;
//   final double waveStrength;
//   final Shadow waveShadow;
//   final Widget child;

//   Wave({
//     Key key,
//     this.wavePosition,
//     this.waveHeight,
//     this.wavePoints,
//     this.waveStrength,
//     this.waveShadow,
//     this.child,
//   })  : assert(wavePoints.every(_isNormalizedRange),
//             'The wavePoint property must have a value between 0.0 and 1.0'),
//         super(key: key);

//   bool _isNormalizedRange(double value) => value >= 0.0 && value <= 1.0;

//   @override
//   Widget build(BuildContext context) {
//     double _width;
//     double _height;

//     return LayoutBuilder(
//       builder: (context, constraints) {
//         switch (wavePosition) {
//           case WavePosition.left:
//           case WavePosition.right:
//             _width = waveStrength;
//             _height = constraints.biggest.height;
//             break;
//           case WavePosition.top:
//           case WavePosition.bottom:
//             _width = constraints.biggest.width;
//             _height = waveStrength;
//             break;
//           default:
//         }

//         return Container(
//           width: _width,
//           height: _height,
//           child: CustomPaint(
//             foregroundPainter: WavePainter(
//               clipper: WaveClipper(
//                 wavePosition: wavePosition,
//                 waveHeight: waveHeight,
//                 wavePoints: wavePoints,
//                 waveStrength: waveStrength,
//               ),
//               shadow: waveShadow,
//             ),
//             child: child,
//           ),
//         );
//       },
//     );
//   }
// }

// class WavePainter extends CustomPainter {
//   final CustomClipper<Path> clipper;
//   final Shadow shadow;

//   WavePainter({
//     @required this.clipper,
//     this.shadow,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path = clipper.getClip(size);
//     Paint paint = Paint();

//     if (shadow != null) {
//       path.shift(shadow.offset);
//       paint = shadow.toPaint();
//     }

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldPainter) => true;

//   @override
//   bool hitTest(Offset position) => false;
// }

// class WaveClipper extends CustomClipper<Path> {
//   final WavePosition wavePosition;
//   final double waveHeight;
//   final List<double> wavePoints;
//   final double waveStrength;

//   WaveClipper({
//     @required this.wavePosition,
//     @required this.waveHeight,
//     @required this.wavePoints,
//     @required this.waveStrength,
//   });

//   @override
//   Path getClip(Size size) {
//     Path _path = Path();

//     switch (wavePosition) {
//       case WavePosition.left:
//         _path.moveTo(0.0, size.height);
//         _path.lineTo(0.0, 0.0);
//         _path.lineTo(waveHeight, 0.0);

//         _path.lineTo(waveHeight, size.height);
//         break;
//       case WavePosition.top:
//         _path.moveTo(0.0, waveHeight);
//         _path.lineTo(0.0, 0.0);
//         _path.lineTo(size.width, 0.0);
//         _path.lineTo(size.width, waveHeight);

//         break;
//       case WavePosition.right:
//         _path.moveTo(size.width - waveHeight, size.height);

//         _path.lineTo(size.width - waveHeight, 0.0);
//         break;
//       case WavePosition.bottom:
//         _path.moveTo(0.0, size.height);
//         break;
//     }
//     _path.close();

//     for (double point in wavePoints) {
//       Offset control = Offset();
//       Offset given = Offset();
//       _path.quadraticBezierTo(control.dx, control.dy, given.dx, given.dy);
//     }

//     var firstControlPoint = Offset(size.width / 4.0, height - strength);
//     var firstGivenPoint = Offset(size.width / 2.0, height - strength / 2.0);
//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstGivenPoint.dx, firstGivenPoint.dy);

//     var secondControlPoint = Offset(size.width - size.width / 4.0, height);
//     var secondGivenPoint = Offset(size.width, height - strength / 2.0);
//     path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//         secondGivenPoint.dx, secondGivenPoint.dy);

//     path.lineTo(size.width, height - strength / 2.0);
//     path.lineTo(size.width, 0.0);
//     _path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }
