import 'package:figma_app/custom_btn.dart';
import 'package:figma_app/custom_text_field.dart';
import 'package:flutter/material.dart';

class DeliveryDetailsDialog extends StatelessWidget {
  const DeliveryDetailsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 360,
        color: Colors.white,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your delivery address"),
            CustomTextField(
                txtHint: "10th avenue, Lekki, Lagos.",
                rangewidth: double.infinity),
            Text("Number we can call"),
            CustomTextField(
                txtHint: "09090909090", rangewidth: double.infinity),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBtn2(txtbutton: "Pay on delivery", btnwidth: 130),
                CustomBtn2(txtbutton: "Pay with Card", btnwidth: 130)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
