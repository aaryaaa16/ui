import 'package:daily_ui1/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lets get started!',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[900]
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFieldInput(
            textEditingController: _nameController,
            textInputType: TextInputType.text,
            hintText: 'Name',
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFieldInput(
            textEditingController: _emailController,
            textInputType: TextInputType.emailAddress,
            hintText: 'Email',
          ),
          SizedBox(
            height: 15.0,
          ),
          TextFieldInput(
            textEditingController: _passwordController,
            textInputType: TextInputType.text,
            isPass: true,
            hintText: 'Password',
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)
                    )
                )
            ),
            child: Text(
                'Sign Up'
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Forgot password?',
            style: TextStyle(
                fontSize: 12,
                color: Colors.deepPurple
            ),
          )
        ],
      ),
    );
  }
}