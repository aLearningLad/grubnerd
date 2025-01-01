import 'package:flutter/material.dart';
import 'package:grubnerdapp/components/my_drawer.dart';
import 'package:grubnerdapp/components/my_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            child: Text('Hello there!'),
            title: Text('title here'),
          )
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
