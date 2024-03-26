import 'package:figma_app/home_screen/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Home_Screen_One extends StatelessWidget {
  const Home_Screen_One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: mydrawer()),
      body: SafeArea(
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
              decoration: const BoxDecoration(color: Colors.pinkAccent),
              margin: const EdgeInsets.all(20),
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
            )
          ],
        ),
      ),
    );
  }
}
