import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    void openLocationSearchBox(BuildContext context) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Your location"),
                content: TextField(
                  decoration:
                      const InputDecoration(hintText: "Search address . . ."),
                ),
                actions: [
                  // cancel button

                  // save button
                ],
              ));
    }

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          Row(
            children: [
              // address
              GestureDetector(
                onTap: () => openLocationSearchBox(context),
                child: Row(
                  children: [
                    Text(
                      "619 Rodeo Ave",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // drop down menu
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          )
        ],
      ),
    );
  }
}
