import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final Function(String)? onChanged;
  final bool error;
  const TextFieldInput({Key? key, required this.textEditingController, this.isPass = false, required this.textInputType, required this.hintText, this.onChanged, this.error = false,}) : super(key: key);

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {

  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode = FocusNode();
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
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                  color: widget.error ? Colors.red : Colors.grey,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                  color: widget.error ? Colors.red : Colors.indigo
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                  color: widget.error ? Colors.red : Colors.grey
              )
          ),
          filled: true,
          labelText: widget.hintText,
          labelStyle: TextStyle(
              color: _focusNode.hasFocus ? (widget.error ? Colors.red : Colors.indigo) : Colors.grey
          ),
          contentPadding: const EdgeInsets.all(20),
          suffixIcon: IconButton(
            icon: widget.isPass ? const Icon(
              Icons.info,
              color: Colors.indigo,
            ) : const SizedBox.shrink(),
            onPressed: () {
            },
          )
      ),
      keyboardType: widget.textInputType,
      obscureText: widget.isPass,
    );
  }
}
