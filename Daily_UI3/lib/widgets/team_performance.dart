import 'package:flutter/material.dart';

class TeamPerformance extends StatefulWidget {

  const TeamPerformance({Key? key}) : super(key: key);

  @override
  State<TeamPerformance> createState() => _TeamPerformanceState();
}

class _TeamPerformanceState extends State<TeamPerformance> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Make your day',
          style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        const Text(
          'colourful with',
          style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        const Text(
          'this application',
          style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
                width: 120,
                height: 17,
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 7), // Adjust the text size
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    hintStyle: const TextStyle(fontSize: 7),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7), // Adjust the border radius
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), // Adjust the content padding
                  ),
                )
            ),
            const SizedBox(width: 10),
            Container(
              height: 17,
              width: 70,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'SUBSCRIBE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 6
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)
                    )
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
