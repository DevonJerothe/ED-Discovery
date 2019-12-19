import 'package:ed_discovery/data/classes/stations.dart';
import 'package:flutter/material.dart';

class StationTile extends StatelessWidget {
  StationTile({this.station});

  final Stations station;

  @override
  Widget build(BuildContext context) {
    final stationType = (station.type == 'Coriolis Starport')
        ? "assets/station.png"
        : ((station.type == 'Orbis Starport')
            ? "assets/orbis.png"
            : ((station.type == 'Outpost')
                ? "assets/outpost.png"
                : "assets/planet_outpost.png"));
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
          height: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                width: 70,
                child: Image.asset(stationType),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.orange)),
              ),
              Container(
                padding: EdgeInsets.all(6),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          station.name,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            '  ${station.distance_to_arrival.toStringAsFixed(2)} ls', overflow: TextOverflow.ellipsis)
                      ],
                    ),
                    Text('Faction: ${station.controlling_minor_faction}'),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Facilities M: '),
                        boolIcon(station.has_market),
                        Text('  O:'),
                        boolIcon(station.has_outfitting),
                        Text('  S:'),
                        boolIcon(station.has_shipyard),
                        Text('  LP:'),
                        boolIcon(station.has_large_pad)
                      ],
                    ),
                    Text('Economy: ${station.primary_economy}'),
                    Text('Government: ${station.government}')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Icon boolIcon(bool check) {
    if (check) {
      return Icon(Icons.check, color: Colors.green, size: 12);
    } else {
      return Icon(Icons.clear, color: Colors.red, size: 12);
    }
  }
}
