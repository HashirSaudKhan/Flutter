import 'package:figma_app/backbutton.dart';
import 'package:figma_app/custom_buttons.dart';
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
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.70,
          color: Colors.deepOrange[100],
          child: ListView(
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 70,
                  color: Colors.pink,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        // width: 80,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(15),
                        //   color: const Color(0xffFFFCF2),
                        // ),
                        child: Image.asset('assets/images/Frame 11903.png'),
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Quinoa fruit salad",
                            style: TextStyle(
                                color: Color(0xff333333), fontSize: 18),
                          ),
                          const Text(
                            "2packs",
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 12),
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/BigN.png'),
                              const Text(
                                "20,000",
                                style: TextStyle(
                                    color: Color(0xff333333), fontSize: 18),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffFFF2E7),
                        foregroundColor: Color(0xffFFA451),
                        child: Icon(Icons.remove),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 80,
                color: Colors.pink,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 80,
                color: Colors.pink,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.15,
          color: Colors.deepPurple[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(color: Color(0xff333333)),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/BigN.png'),
                      const Text(
                        "60,000",
                        style:
                            TextStyle(color: Color(0xff27214D), fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                  width: 230, child: Custom_Button(btn_name: "Checkout"))
            ],
          ),
        )
      ]),
    );
  }
}
