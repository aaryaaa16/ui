import 'package:contact/utils/icons.dart';
import 'package:contact/widgets/text_field_input.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(25.0),
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get in touch with us',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF1ABC9B)),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.mail_outline,
                          color: Color(0xFF1ABC9B), size: 30),
                      SizedBox(width: 10),
                      Text(
                        'screen@gamil.com',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.map_outlined,
                          color: Color(0xFF1ABC9B), size: 30),
                      SizedBox(width: 10),
                      Text(
                        'Random street',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.phone_in_talk_outlined,
                          color: Color(0xFF1ABC9B), size: 30),
                      SizedBox(width: 10),
                      Text(
                        '+91 00000 00000',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Connect with us',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          child: Icon(
                            MyFlutterApp.facebook,
                            color: Colors.white,
                          ),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF1ABC9B),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: Container(
                          child: Icon(
                            MyFlutterApp.youtube_play,
                            color: Colors.white,
                          ),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF1ABC9B),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: Container(
                          child: Icon(
                            MyFlutterApp.instagram,
                            color: Colors.white,
                          ),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF1ABC9B),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: Container(
                          child: Icon(
                            MyFlutterApp.twitter,
                            color: Colors.white,
                          ),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF1ABC9B),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 450,
            width: 350,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8.0),
            decoration: BoxDecoration(
                color: Color(0xFF1ABC9B), //Border.all
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ) //BorderRadius.all
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20),
                TextFieldInput(
                    textEditingController: _nameController,
                    textInputType: TextInputType.text,
                    hintText: 'Name'),
                SizedBox(height: 10),
                TextFieldInput(
                    textEditingController: _emailController,
                    textInputType: TextInputType.emailAddress,
                    hintText: 'Email'),
                SizedBox(height: 10),
                TextFieldInput(
                    textEditingController: _phoneController,
                    textInputType: TextInputType.number,
                    hintText: 'Phone Number'),
                SizedBox(height: 10),
                TextFieldInput(
                    textEditingController: _addressController,
                    textInputType: TextInputType.text,
                    hintText: 'Address'),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 340,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 15, color: Color(0xFF1ABC9B)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

// Container(
// color: Color(0xFF1ABC9B),
// )
