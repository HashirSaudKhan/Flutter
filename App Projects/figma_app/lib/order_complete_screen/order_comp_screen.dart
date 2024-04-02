import 'package:figma_app/custom_buttons.dart';
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
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffFCF6F0),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                  child: Text(
                "Continue shopping",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xffFFA451)),
              )),
            )
          ],
        ),
      ),
    );
  }
}
