import 'package:flutter/material.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xffFFA451),
          ),
          Container(
            width: double.infinity,
            height: 480,
            color: Colors.white,
          ),
          Positioned(
            //top: 100,
            bottom: 590,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.pink[100],
            ),
          )
        ],
      ),
    );
  }
}
