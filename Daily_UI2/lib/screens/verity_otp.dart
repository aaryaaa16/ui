import 'package:daily_ui2/widgets/otp_input.dart';
import 'package:flutter/material.dart';

class VerifyOtp extends StatefulWidget {
  final Function()? incrementIndex;
  const VerifyOtp({Key? key, required this.incrementIndex}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Code has been sent to',
          style: TextStyle(
            fontSize: 15.0
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'your number ending with XXXXX X5215',
          style: TextStyle(
            fontSize: 15.0
          ),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OtpInput(controller: _fieldOne, autoFocus: true),
            const SizedBox(width: 10),
            OtpInput(controller: _fieldTwo, autoFocus: false),
            const SizedBox(width: 10),
            OtpInput(controller: _fieldThree, autoFocus: false),
            const SizedBox(width: 10),
            OtpInput(controller: _fieldFour, autoFocus: false),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          "Haven't recived the verification code?",
          style: TextStyle(
            fontSize: 15.0
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Resend',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.indigo
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          height: 50,
          width: 340,
          child: ElevatedButton(
            onPressed: widget.incrementIndex,
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
            child: const Text(
              'Verify',
              style: TextStyle(
                  fontSize: 15
              ),
            ),
          ),
        )
      ],
    );
  }
}
