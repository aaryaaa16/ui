import 'package:daily_ui2/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentDetails extends StatefulWidget {
  final Function()? incrementIndex;
  const PaymentDetails({Key? key, required this.incrementIndex}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {

  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final DateTime currentDate = DateTime.now();
  bool _dateError = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _numberController.dispose();
    _cvvController.dispose();
    _dateController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Pay via new Card',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 20),
          TextFieldInput(
            textEditingController: _numberController,
            hintText: 'Card Number',
            textInputType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Flexible(
                child: TextFieldInput(
                  textEditingController: _dateController,
                  hintText: 'Expiry (MM/YYYY)',
                  textInputType: TextInputType.text,
                  onChanged: (value) {
                    if (!isCardExpiryValid(value)) {
                      setState(() {
                        _dateError = true;
                      });
                    } else {
                      setState(() {
                        _dateError = false;
                      });
                    }
                  },
                  error: _dateError,
                ),
              ),
              const SizedBox(width: 10.0),
              Flexible(
                child: TextFieldInput(
                  textEditingController: _cvvController,
                  hintText: 'CVV',
                  textInputType: TextInputType.number,
                  isPass: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextFieldInput(
            textEditingController: _nameController,
            hintText: 'Name on Card',
            textInputType: TextInputType.text,
          ),
          const SizedBox(height: 70),
          const Text(
            'We support',
            style: TextStyle(
              color: Colors.grey
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5.0,
                child: SizedBox(
                  height: 60,
                  width: 100,
                  child: SvgPicture.asset(
                    'assets/visa.svg',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 60,
                  width: 100,
                  child: SvgPicture.asset(
                    'assets/mastercard.svg',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 60,
                  width: 100,
                  child: SvgPicture.asset(
                    'assets/rupay.svg',
                    // color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
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
                'Add Card & Pay',
                style: TextStyle(
                    fontSize: 15
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  bool isCardExpiryValid(String input) {
    try {
      // Split the input into month and year
      final parts = input.split('/');
      if (parts.length != 2) {
        return false;
      }

      final month = int.parse(parts[0]);
      final year = int.parse(parts[1]);

      if (month < 1 || month > 12) {
        return false;
      }

      final cardExpiryDate = DateTime(year, month);

      return cardExpiryDate.isAfter(currentDate) || cardExpiryDate.isAtSameMomentAs(currentDate);
    } catch (e) {
      return false;
    }
  }
}
