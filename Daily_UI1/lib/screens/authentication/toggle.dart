import 'package:daily_ui1/screens/authentication/sign_in.dart';
import 'package:daily_ui1/screens/authentication/sign_up.dart';
import 'package:flutter/material.dart';

class ToggleView extends StatefulWidget {
  const ToggleView({Key? key}) : super(key: key);

  @override
  State<ToggleView> createState() => _ToggleViewState();
}

class _ToggleViewState extends State<ToggleView> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool showSignIn = true;

  void toggle() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(35),
            child: Column(
              children: [
                Text(
                  'Cake.Shop',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey[900]
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: toggle,
                      child: Text(
                        'SignIn',
                        style: showSignIn ? TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            color: Colors.deepPurple
                        ) : TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            color: Colors.grey
                        ),
                      )
                    ),
                    GestureDetector(
                      onTap: toggle,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'SignUp',
                          style: showSignIn ? TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Colors.grey
                          ) : TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Colors.deepPurple
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: showSignIn ? SignIn() : SignUp(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
