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

  FocusNode _focusNode = FocusNode();
  bool _passwordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode = FocusNode();
    _passwordVisible = false;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _focusNode.dispose();
  }

  void _requestFocus(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      focusNode: _focusNode,
      onTap: _requestFocus,
      decoration: InputDecoration(
          // hintText: hintText,
          fillColor: Colors.white.withOpacity(0.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.grey
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.deepPurple
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.grey
            )
          ),
          filled: true,
          labelText: widget.hintText,
          labelStyle: TextStyle(
            color: _focusNode.hasFocus ? Colors.deepPurple : Colors.grey
          ),
          contentPadding: const EdgeInsets.all(20),
        suffixIcon: IconButton(
          icon: widget.isPass ? Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.deepPurple,
          ) : Icon(null),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        )
      ),
      keyboardType: widget.textInputType,
      obscureText: widget.isPass,
    );
  }
}
