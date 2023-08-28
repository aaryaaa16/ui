import 'package:flutter/material.dart';

class AppWork extends StatelessWidget {
  const AppWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'How does this App Work?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Below is the way to use the chat application',
            style: TextStyle(
                fontSize: 12,
              color: Colors.blue
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: TextStyle(
                fontSize: 12,
              color: Colors.grey[700]
            ),
          ),
          Text(
            'Sed do eiusmod tempor incididunt ut labore et dolore.',
            style: TextStyle(
              fontSize: 12,
                color: Colors.grey[700]
            ),
          ),
          Text(
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco.',
            style: TextStyle(
              fontSize: 12,
                color: Colors.grey[700]
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 250,
            width: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/diversity.jpg'
                    )
                )
            ),
          )
        ],
      ),
    );
  }
}
