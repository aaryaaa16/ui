import 'package:daily_ui2/screens/screen.dart';
import 'package:daily_ui2/utils/timeline_tile.dart';
import 'package:flutter/material.dart';

class WrapperClass extends StatefulWidget {
  const WrapperClass({Key? key}) : super(key: key);

  @override
  State<WrapperClass> createState() => _WrapperClassState();
}

class _WrapperClassState extends State<WrapperClass> {

  int index = 0;


  void incrementIndex() {
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buy'
        ),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.indigo[50],
              height: 50,
              width: double.infinity,
              child: Row(
                children: const [
                  Text(
                    'Amount payable: ',
                    style: TextStyle(
                        fontSize: 15.0
                    ),
                  ),
                  Text(
                    'Rs.25',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TimelineTile(index: index),
                  const SizedBox(height: 50),
                  Screen(index: index, incrementIndex: incrementIndex)
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}


