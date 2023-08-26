import 'package:flutter/material.dart';

class TimelineTile extends StatefulWidget {
  const TimelineTile({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<TimelineTile> createState() => _TimelineTileState();
}

class _TimelineTileState extends State<TimelineTile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          task1(),
          spacer(),
          line1(),
          spacer(),
          task2(),
          spacer(),
          line2(),
          spacer(),
          task3()
        ],
      ),
    );
  }

  Widget tick(bool isChecked, bool activeRadio) {
    return isChecked ? const Icon(
      Icons.check_circle_sharp,
      color: Colors.indigo,
    ) : Icon(
      Icons.radio_button_unchecked_outlined,
      color: activeRadio ? Colors.indigo : Colors.grey,
    );
  }

  Widget task1() {
    return widget.index > 0 ? tick(true, false) : tick(false, widget.index == 0 ? true : false);
  }

  Widget task2() {
    return widget.index > 1 ? tick(true, false) : tick(false, widget.index == 1 ? true : false);
  }

  Widget task3() {
    return widget.index > 2 ? tick(true, false) : tick(false, widget.index == 2 ? true : false);
  }

  Widget spacer() {
    return Container(
      width: 2.0,
    );
  }

  Widget line(bool isComplete) {
    return Container(
      color: isComplete ? Colors.indigo : Colors.grey,
      height: 2.0,
      width: 120.0,
    );
  }

  Widget line1() {
    return widget.index > 0 ? line(true) : line(false);
  }

  Widget line2() {
    return widget.index > 1 ? line(true) : line(false);
  }
}
