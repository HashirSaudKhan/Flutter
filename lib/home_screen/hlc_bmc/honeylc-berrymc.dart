import 'package:flutter/material.dart';

class HoneyLimeCombo_BerryMangoCombo extends StatelessWidget {
  final String txtName;
  final Image imageAssets;
  const HoneyLimeCombo_BerryMangoCombo(
      {super.key, required this.txtName, required this.imageAssets});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
      color: Colors.pink[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                  height: 130,
                  width: 120,
                  color: Colors.pink[400],
                  child: imageAssets),
              Container(
                height: 40,
                width: 40,
                //color: Colors.pink[200],
                child: Image.asset('assets/images/Vector.png'),
              ),
            ],
          ),
          Text(
            txtName,
            style: const TextStyle(fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                Image.asset('assets/images/N.png'),
                const Text(
                  "2,000",
                  style: TextStyle(
                    color: Color(0xffF08626),
                  ),
                )
              ]),
              const CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xffFFF2E7),
                foregroundColor: Color(0xffFFA451),
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
