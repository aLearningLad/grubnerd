import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary)),
      child: Row(
        children: [
// delivery fee
          Column(
            children: [
              Text('R35.99'),
              Text('Delivery fee'),
            ],
          ),

// delivery time
          Column(
            children: [
              Text('15-30min'),
              Text('Delivery time'),
            ],
          )
        ],
      ),
    );
  }
}
