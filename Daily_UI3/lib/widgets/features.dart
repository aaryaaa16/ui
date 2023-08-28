import 'package:flutter/material.dart';

class Feature extends StatefulWidget {
  final Icon icon;
  final Icon checkedIcon;
  const Feature({Key? key, required this.icon, required this.checkedIcon})
      : super(key: key);

  @override
  State<Feature> createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
  bool isChecked = false;

  void chooseTile() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: chooseTile,
      child: Container(
        decoration: BoxDecoration(
          color: isChecked ? Colors.blue[400] : Colors.white,
          border: Border.all(
            color: isChecked ? Colors.blue : Colors.grey,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        height: 230,
        child: Column(
          children: [
            colorIcon(),
            const SizedBox(height: 20),
            Text(
              'LOREM IPSUM',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: isChecked ? Colors.white : Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor,',
              style: TextStyle(fontSize: 8, color: isChecked ? Colors.white : Colors.grey[700]),
            ),
            Text(
              'consectetur adipisc.',
              style: TextStyle(fontSize: 7, color: isChecked ? Colors.white : Colors.grey[700]),
            ),
            Text(
              'Sed do eiusmod',
              style: TextStyle(fontSize: 7, color: isChecked ? Colors.white : Colors.grey[700]),
            ),
            Text(
              'incididunt ut labore.',
              style: TextStyle(fontSize: 7, color: isChecked ? Colors.white : Colors.grey[700]),
            ),
            const SizedBox(height: 10),
            Text(
              'MORE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: isChecked ? Colors.white : Colors.black),
            ),
            const SizedBox(height: 10),
            Container(
              color: isChecked ? Colors.white : Colors.grey,
              height: 1,
              width: 70,
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 7),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget colorIcon() {
    return isChecked ? widget.checkedIcon : widget.icon;
  }
}
