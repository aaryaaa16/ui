import 'package:flutter/material.dart';

class OtpInput extends StatefulWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput({Key? key, required this.controller, required this.autoFocus}) : super(key: key);

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 60,
      child: TextField(
        autofocus: widget.autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: widget.controller,
        maxLength: 1,
        autocorrect: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          counterText: "",
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20.0
          )
        ),
        onChanged: (value) {
          if(value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
