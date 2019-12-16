import 'package:ed_discovery/data/classes/system.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SystemTile extends StatefulWidget {
  SystemTile({this.system});

  final System system;

  @override
  _SystemTileState createState() => _SystemTileState();
}

class _SystemTileState extends State<SystemTile> {
  @override
  Widget build(BuildContext context) {
    final system = widget.system;
    final Color security = (system.security == "High")
        ? Colors.green
        : ((system.security == "Medium") ? Colors.blue : Colors.yellow);
    final allegiance = (system.allegiance == "Federation")
        ? "assets/federation.png"
        : ((system.allegiance == "Alliance")
            ? "assets/Alliance.png"
            : ((system.allegiance == "Empire")
                ? "assets/empire.png"
                : "assets/Independent.png"));
    return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.orange,
          ),
          // image: DecorationImage(
          //   alignment: Alignment.bottomRight,
          //   image: AssetImage(allegiance),
          // ),
        ),
        height: 120,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Image.asset(allegiance, height: 200, width: 250, color: Colors.orange),
              bottom: -70,
              right: -100,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(12),
                  child: Image.asset('assets/system.png',
                      height: 55, color: Colors.blue),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                system.name,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(FontAwesomeIcons.solidSquare,
                                    size: 8, color: security),
                              ),
                            ],
                          ),
                          Text('${system.distance.toStringAsFixed(4)} ly'),
                          Container(),
                        ],
                      ),
                      Text('Population: ${system.population}'),
                      Text('Economy: ${system.primary_economy}'),
                      Text('Government: ${system.government}'),
                      Text('State: ${system.state}')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
