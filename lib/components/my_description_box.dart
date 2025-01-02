import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
// text styles
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary)),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Text(
                '15-30min',
                style: myPrimaryTextStyle,
              ),
              Text(
                'Delivery time',
                style: mySecondaryTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
