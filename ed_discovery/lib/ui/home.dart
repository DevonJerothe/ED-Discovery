import 'package:ed_discovery/ui/exploration/home.dart';
import 'package:ed_discovery/ui/gatnet/home.dart';
import 'package:ed_discovery/ui/trading/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({Key key}) : super(key:key);
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [GalNetHome(), ExplorationHome(), TradingHome()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.blur_circular),
            title: Text('GatNet')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Exploration'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text('Trading')
          )
        ],
      ),
      body: screens[currentIndex],
    );
  }
}