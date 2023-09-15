import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({Key? key, required this.textEditingController, this.isPass = false, required this.textInputType, required this.hintText}) : super(key: key);

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      controller: widget.textEditingController,
      decoration: InputDecoration(
          fillColor: Color(0xFF1ABC9B),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                  color: Colors.white
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                  color: Colors.white
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                  color: Colors.white
              )
          ),
          filled: true,
          labelText: widget.hintText,
          labelStyle: TextStyle(
              color: Colors.white
          ),
          contentPadding: const EdgeInsets.all(20),
      ),
      keyboardType: widget.textInputType,
      obscureText: widget.isPass,
    );
  }
}