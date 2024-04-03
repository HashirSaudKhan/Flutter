import 'package:figma_app/custom_buttons.dart';
import 'package:figma_app/custom_text_field.dart';
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
        height: 411,
        width: double.infinity,
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card holder’s name",
                  style: TextStyle(fontSize: 16),
                ),
                CustomTextField(
                  txtHint: "10th avenue, Lekki, Lagos.",
                  rangewidth: double.infinity,
                ),
                Text(
                  "Card number",
                  style: TextStyle(fontSize: 16),
                ),
                CustomTextField(
                    rangewidth: double.infinity, txtHint: "09090909090"),
                Row(
                  children: [
                    Text("Date"),
                    SizedBox(
                      width: 135,
                    ),
                    Text("CVV")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextField(txtHint: "MM/YY", rangewidth: 130),
                    CustomTextField(txtHint: "MM/YY", rangewidth: 130)
                  ],
                ),
                Center(
                  child: SizedBox(
                      width: 213,
                      child: Custom_Button(btn_name: "Complete order")),
                )
              ]),
        ),
      ),
    ));
  }
}
