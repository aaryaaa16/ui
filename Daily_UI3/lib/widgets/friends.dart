import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          height: 200,
          width: 190,
          child: Stack(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/friends.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 80,
                child: ClipOval(
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                ),
              ),
              Positioned(
                left: 110,
                top: 30,
                child: ClipOval(
                  child: Container(
                    width: 15,
                    height: 15,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Enjoy with your',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),
              ),
              const Text(
                'Firends',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                ),
              ),
              Text(
                'Sed do eiusmod tempor incididunt',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                ),
              ),
              Text(
                'DUt enim ad minim veniam, quis',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'LISA ASUTIN',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'CREATIVE DIRECTOR',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 7
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
