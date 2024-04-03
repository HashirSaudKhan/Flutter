import 'package:flutter/material.dart';

class AddCardDialog extends StatelessWidget {
  const AddCardDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Dialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Container(
        color: Colors.white,
        height: 450,
        width: double.infinity,
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Card holder’s name",
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: "10th avenue, Lekki, Lagos."),
            ),
            Text(
              "Card number",
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
      ),
    ));
  }
}
