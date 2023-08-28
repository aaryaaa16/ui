import 'package:flutter/material.dart';

class MenuContents extends StatelessWidget {
  const MenuContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Company',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
              ),
              SizedBox(height: 10),
              Text(
                'About Us',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Contact',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Support',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Career',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Blog',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Press',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Product',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Pricing',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Security',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Apps',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Chatting',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Address',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
              ),
              SizedBox(height: 10),
              Text(
                '3474 Harrison Street,',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              Text(
                'San Francisco, 94143,',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
              Text(
                'CA, USA.',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
