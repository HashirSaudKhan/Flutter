import 'package:figma_app/home_screen/drawer/drawer.dart';
import 'package:figma_app/home_screen/hlc_bmc/honeylc-berrymc.dart';
import 'package:figma_app/home_screen/pos_list/pos_list.dart';
import 'package:flutter/material.dart';

class Home_Screen_One extends StatelessWidget {
  const Home_Screen_One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: mydrawer()),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              ListTile(
                leading: Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      child: Image.asset('assets/images/Group 4.png'),
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
                title: const Text("Welcome, Chris."),
                trailing: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffB4B4C0),
                          blurRadius: 0.1,
                          offset: Offset(0.3, 0),
                        ),
                        BoxShadow(
                          color: Color(0xffB4B4C0),
                          blurRadius: 0.1,
                          offset: Offset(0, 0.5),
                        ),
                      ]),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Frame 56.png'),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                //width: double.infinity,
                decoration: const BoxDecoration(color: Colors.pinkAccent),
                //margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                            constraints: BoxConstraints(maxWidth: 300),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xffB4B4C0),
                            ),
                            border: InputBorder.none,
                            hintText: "Search for fruit salad combos",
                            hintStyle: TextStyle(color: Color(0xffB4B4C0))),
                      ),
                    ),
                    Container(
                        width: 40,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const ImageIcon(
                            AssetImage('assets/images/Group 6.png')))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: const Color.fromARGB(255, 31, 176, 196),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 10),
                      Pos_List(
                        txtName: "ALL",
                        widthRange: 50,
                      ),
                      SizedBox(width: 10),
                      Pos_List(txtName: "Salad Combo", widthRange: 110),
                      SizedBox(width: 10),
                      Pos_List(txtName: "Berry Combo", widthRange: 110),
                      SizedBox(width: 10),
                      Pos_List(txtName: "Mango Berry", widthRange: 110)
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                color: Colors.pink[50],
                width: double.infinity,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recommended Combo",
                      style: TextStyle(fontSize: 19, color: Color(0xff27214D)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      width: 60,
                      height: 2,
                      color: const Color(0xffFFA451),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisSize: MainAxisSize.min,
                      children: [
                        HoneyLimeCombo_BerryMangoCombo(
                            txtName: "Honey lime combo",
                            imageAssets: Image.asset(
                                'assets/images/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1.png')),
                        HoneyLimeCombo_BerryMangoCombo(
                            txtName: "Berry mango combo",
                            imageAssets: Image.asset(
                                'assets/images/Glowing-Berry-Fruit-Salad.png'))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
