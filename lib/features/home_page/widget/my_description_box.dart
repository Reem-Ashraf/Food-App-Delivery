import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 5),
      child: Container(

        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [Text("Delivery Fee"), Text("\$12.00")],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [Text("Delivery Time"), Text("15-20 min")],
            ),
          ],
        ),
      ),
    );
  }
}
