import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  final Icon icon;
  final String text;
  const TextColumn({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: 5),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 9
              ),
            )
          ],
        ),
        Text(
            "Lorem Ipsum has been ",
          style: TextStyle(
              fontSize: 7,
            color: Colors.grey[800]
          ),
        ),
        Text(
            "the industry's standard dummy ",
          style: TextStyle(
              fontSize: 7,
              color: Colors.grey[800]
          ),
        ),
        Text(
            "text ever since the 1500s,",
          style: TextStyle(
              fontSize: 7,
              color: Colors.grey[800]
          ),
        ),
        Text(
          "when an unknown printer ",
          style: TextStyle(
              fontSize: 7,
              color: Colors.grey[800]
          ),
        ),
        Text(
            "took a galley of type",
          style: TextStyle(
              fontSize: 7,
              color: Colors.grey[800]
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'More',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 8
          ),
        )
      ],
    );
  }
}
