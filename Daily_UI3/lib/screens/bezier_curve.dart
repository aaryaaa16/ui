import 'package:daily_ui3/widgets/app_work.dart';
import 'package:daily_ui3/widgets/text_column.dart';
import 'package:daily_ui3/widgets/team_performance.dart';
import 'package:flutter/material.dart';

class BezierCurve extends StatefulWidget {
  const BezierCurve({Key? key}) : super(key: key);

  @override
  State<BezierCurve> createState() => _BezierCurveState();
}

class _BezierCurveState extends State<BezierCurve> {

  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: Curve(),
          child: Container(
            color: Colors.grey[300],
          ),
        ),
        ClipPath(
          clipper: GradientCurve(),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.cyan,
                    Colors.green,
                  ],
                )
            ),
          ),
        ),
        Positioned(
          left: 240,
          top: 20,
          child: SizedBox(
            height: 350,
            width: 170,
            child: Image.asset(
                'assets/iphone.png'
            ),
          ),
        ),
        const Positioned(
          left: 50,
          top: 100,
          child: TeamPerformance()
        ),
        Positioned(
          left: 25,
          top: 290,
          child: Column(
            children: [
              Text(
                'A simple, proven way to boost your',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                  'team Performance',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const TextColumn(
                    icon: Icon(Icons.headphones, color: Colors.blue),
                    text: 'Use headphones',
                  ),
                  const SizedBox(width: 10),
                  const TextColumn(
                    icon: Icon(Icons.play_circle_outline, color: Colors.blue),
                    text: 'Play your music',
                  ),
                  const SizedBox(width: 10),
                  const TextColumn(
                    icon: Icon(Icons.playlist_add, color: Colors.blue),
                    text: 'Make your playlist',
                  )
                ],
              )
            ],
          ),
        ),
        const Positioned(
          // left: 30,
          top: 500,
          child: AppWork(),
        )
      ],
    );
  }
}

class GradientCurve extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, (size.height * 3) / 8);
    var firstControlPoint = Offset(size.width / 6 + 10, size.height / 4 + 10);
    var firstEndPoint = Offset(size.width / 3 + 10, (size.height * 2.25) / 8 + 10);
    var secondControlPoint = Offset(size.width / 2 + 10, (size.height * 2.6) / 8 + 10);
    var secondEndPoint = Offset((size.width * 2) / 3 + 10, (size.height * 1.8) / 8 + 10);
    var thirdControlPoint = Offset((size.width * 5) / 6 + 10, size.height / 8 + 10);
    var thirdEndPoint = Offset(size.width + 10, (size.height * 1.5) / 8 + 10);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy, thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class Curve extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height * 4.5 / 8);
    path.lineTo(size.width / 2, size.height * 4.5 / 8);
    var firstControlPoint = Offset(size.width * 2 / 3, size.height * 4.49 / 8);
    var firstEndPoint = Offset(size.width * 5 / 6, size.height  * 4.05/ 8);
    var secondControlPoint = Offset(size.width * 11 / 12, size.height * 3.85 / 8);
    var secondEndPoint = Offset(size.width, size.height * 1.15 / 3);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}