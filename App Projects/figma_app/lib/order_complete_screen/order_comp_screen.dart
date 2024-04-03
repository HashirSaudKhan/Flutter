import 'package:figma_app/custom_buttons.dart';

import 'package:figma_app/custom_btn.dart';
import 'package:figma_app/order_complete_screen/add_card_dialog.dart';
import 'package:flutter/material.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Green tick.png'),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Order Taken ",
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              "Your order have been taken and is",
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              "being attended to",
              style: TextStyle(fontSize: 16),
            ),
            Container(
                margin: const EdgeInsets.only(top: 40, bottom: 20),
                width: 230.0,
                child: const Custom_Button(btn_name: "Track order")),
            InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => const AddCardDialog());
                },
                child: const CustomBtn2(
                    txtbutton: "Continue shopping", btnwidth: 200))
          ],
        ),
      ),
    );
  }
}
