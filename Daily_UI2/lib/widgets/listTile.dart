import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  final Icon icon;
  final String title;
  const Tile({Key? key, required this.icon, required this.title}) : super(key: key);

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {

  bool isChecked = false;

  void chooseTile() {
    setState(() {
      isChecked = !isChecked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: isChecked ? Colors.indigo : Colors.white,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: isChecked ? Colors.indigo[50] : Colors.white,
      elevation: 5.0,
      child: SizedBox(
        height: 70,
        width: 350,
        child: Center(
          child: ListTile(
            onTap: chooseTile,
            leading: isChecked ? const Icon(Icons.radio_button_checked_outlined, color: Colors.indigo) : const Icon(Icons.radio_button_unchecked_outlined),
            title: Text(
              widget.title,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5
              ),
            ),
            trailing: widget.icon,
          ),
        ),
      ),
    );
  }
}
