import 'package:flutter/material.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 200,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Download Chat App Now!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10
                  ),
                ),
                const Text(
                  'Sed do eiusmod tempor incididunt ut',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10
                  ),
                ),
                const Text(
                  'DUt enim ad minim veniam, quis',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 85,
                      width: 100,
                      child: Image.asset(
                          'assets/play.png'
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      height: 40,
                      width: 60,
                      child: Image.asset(
                          'assets/app.png'
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 350,
            width: 150,
            child: Image.asset(
                'assets/phone.png'
            ),
          ),
        ],
      ),
    );
  }
}
