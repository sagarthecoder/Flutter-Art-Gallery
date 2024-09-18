import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallary_art/Modules/UISections/HomePage/Views/ArtItemView.dart';
import 'package:gallary_art/Modules/UISections/HomePage/Views/ArtView.dart';

import '../Model/ArtList.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this); // Custom TabController
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0XFFF1F4F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0XFFFD7C4B),
          size: 32,
        ),
      ),
      bottomNavigationBar: makeTabBar(),
      body: TabBarView(controller: _tabController, children: const [
        ArtView(),
        Center(
          child: Text("chat"),
        ),
        Center(
          child: Text("settings"),
        ),
        Center(
          child: Text("more"),
        )
      ]),
    );
  }

  Widget makeTabBar() {
    return Container(
      height: 86,
      color: Colors.white,
      child: TabBar(
        controller: _tabController,
        indicatorPadding: EdgeInsets.only(bottom: 4),
        tabs: const [
          Tab(
            text: 'art',
            icon: Icon(Icons.home),
          ),
          Tab(
            text: 'chat',
            icon: Icon(Icons.chat),
          ),
          Tab(
            text: 'settings',
            icon: Icon(Icons.settings),
          ),
          Tab(
            text: 'more',
            icon: Icon(Icons.more),
          )
        ],
      ),
    );
  }
}
