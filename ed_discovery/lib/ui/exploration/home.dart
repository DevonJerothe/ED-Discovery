import 'package:ed_discovery/ui/exploration/tabs/saved.dart';
import 'package:ed_discovery/ui/exploration/tabs/search.dart';
import 'package:flutter/material.dart';

class ExplorationHome extends StatefulWidget {
  @override
  _ExplorationHomeState createState() => _ExplorationHomeState();
}

class _ExplorationHomeState extends State<ExplorationHome> {

  int _currentIndex = 0;
  final pages = [StarMapSearch(), SavedSearches()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _currentIndex,
      length: pages.length,
      child: Scaffold(
        appBar: AppBar(
          //title: Text('Star Map'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Center(
              child: TabBar(
                indicatorColor: Colors.red,
                onTap: (val) => _currentIndex = val,
                isScrollable: false,
                tabs: <Widget>[
                  Tab(child: Text('Galatic Search')),
                  Tab(child: Text('Saved Locations'))
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            pages[0],
            pages[1]
          ],
        ),
      ),
    );
  }
}