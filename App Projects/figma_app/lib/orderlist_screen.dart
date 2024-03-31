import 'package:figma_app/backbutton.dart';
import 'package:flutter/material.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
          height: MediaQuery.of(context).size.height * 0.15,
          width: double.infinity,
          color: const Color(0xffFFA451),
          child: const Row(
            children: [
              MyBackButton(),
              SizedBox(
                width: 32,
              ),
              Text(
                "My Basket",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ]),
    );
  }
}
