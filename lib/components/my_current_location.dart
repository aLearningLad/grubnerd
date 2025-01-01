import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Deliver now"),
        Row(
          children: [
// address
            Text("619 Rodeo Ave"),
// drop down menu
            Icon(Icons.keyboard_arrow_down_rounded)
          ],
        )
      ],
    );
  }
}
