import 'package:flutter/material.dart';

class StarMapSearch extends StatefulWidget {
  @override
  _StarMapSearchState createState() => _StarMapSearchState();
}

class _StarMapSearchState extends State<StarMapSearch> {
  bool system = true;
  bool body = false;
  bool station = false;
  bool searched = false;

  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange,
                ),
              ),
              child: ExpansionTile(
                trailing: Icon(Icons.filter_list),
                title: TextField(
                  controller: _textController,
                  autocorrect: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.clear),
                        onTap: () {
                          _textController.text = '';
                        },
                      ),
                      hintText: 'Search The Galaxy'),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: <Widget>[
                        Wrap(
                          spacing: 4,
                          children: <Widget>[
                            ActionChip(
                              label: Text('System'),
                              backgroundColor:
                                  (system) ? Colors.orangeAccent : null,
                              onPressed: () {
                                if (mounted) {
                                  setState(() {
                                    if (system) {
                                      system = false;
                                    } else {
                                      system = true;
                                      body = false;
                                      station = false;
                                    }
                                  });
                                }
                              },
                            ),
                            ActionChip(
                              label: Text('Body'),
                              backgroundColor:
                                  (body) ? Colors.orangeAccent : null,
                              onPressed: () {
                                if (mounted) {
                                  setState(() {
                                    if (body) {
                                      body = false;
                                    } else {
                                      system = false;
                                      body = true;
                                      station = false;
                                    }
                                  });
                                }
                              },
                            ),
                            ActionChip(
                              label: Text('Station'),
                              backgroundColor:
                                  (station) ? Colors.orangeAccent : null,
                              onPressed: () {
                                if (mounted) {
                                  setState(() {
                                    if (station) {
                                      station = false;
                                    } else {
                                      system = false;
                                      body = false;
                                      station = true;
                                    }
                                  });
                                }
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
