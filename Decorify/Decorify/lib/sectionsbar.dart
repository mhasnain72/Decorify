import 'package:flutter/material.dart';

class Hassi extends StatefulWidget {
  const Hassi({super.key});

  @override
  State<Hassi> createState() => _HassiState();
}

class _HassiState extends State<Hassi> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: TabBar(
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        tabs: [
          Tab(
            child: Text("Home"),
          ),
          Tab(
            child: Text("Trending"),
          ),
          Tab(
            child: Text("Favorite"),
          ),
        ],
      ),
    );
  }
}
