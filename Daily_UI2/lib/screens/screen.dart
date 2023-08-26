import 'package:daily_ui2/screens/payment_details.dart';
import 'package:daily_ui2/screens/payment_method.dart';
import 'package:daily_ui2/screens/verity_otp.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  final Function()? incrementIndex;
  final int index;
  const Screen({Key? key,required this.index, required this.incrementIndex}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    if (widget.index == 0) {
      return PaymentList(incrementIndex: widget.incrementIndex);
    } else if (widget.index == 1) {
      return PaymentDetails(incrementIndex: widget.incrementIndex);
    } else {
      return VerifyOtp(incrementIndex: widget.incrementIndex);
    }
  }
}
