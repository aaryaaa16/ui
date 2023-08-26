import 'package:daily_ui2/utils/icons.dart';
import 'package:daily_ui2/widgets/listTile.dart';
import 'package:flutter/material.dart';

class PaymentList extends StatefulWidget {
  final Function()? incrementIndex;
  const PaymentList({Key? key, required this.incrementIndex}) : super(key: key);

  @override
  State<PaymentList> createState() => _PaymentListState();
}

class _PaymentListState extends State<PaymentList> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Select payment method',
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        const Tile(icon: Icon(MyFlutterApp.credit_card, color: Colors.indigo), title: 'Credit/Debit Card'),
        const SizedBox(height: 10),
        const Tile(icon: Icon(MyFlutterApp.wallet, color: Colors.indigo), title: 'UPI'),
        const SizedBox(height: 10),
        const Tile(icon: Icon(MyFlutterApp.bank, color: Colors.indigo), title: 'NetBanking'),
        const SizedBox(height: 10),
        const Tile(icon: Icon(MyFlutterApp.money, color: Colors.indigo), title: 'Cash on Delivery'),
        const SizedBox(height: 20),
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
              'Continue',
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
