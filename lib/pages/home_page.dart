import 'package:flutter/material.dart';
import 'package:grubnerdapp/components/my_current_location.dart';
import 'package:grubnerdapp/components/my_description_box.dart';
import 'package:grubnerdapp/components/my_drawer.dart';
import 'package:grubnerdapp/components/my_sliver_app_bar.dart';
import 'package:grubnerdapp/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
// tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(tabController: _tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      // current location
                      MyCurrentLocation(),

                      // description box
                      MyDescriptionBox()
                    ],
                  ),
                )
              ],
          body: TabBarView(controller: _tabController, children: [
            Text("First tab for home!"),
            Text("Second tab with settings!"),
            Text("Third tab with person!"),
          ])),
    );
  }
}
