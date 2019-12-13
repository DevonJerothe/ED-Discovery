import 'package:flutter/material.dart';

class TradingHome extends StatefulWidget {
  @override
  _TradingHomeState createState() => _TradingHomeState();
}

class _TradingHomeState extends State<TradingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trading'),
      ),
      body: Center(child: Text('In Development - 0% complete')),
    );
  }
}