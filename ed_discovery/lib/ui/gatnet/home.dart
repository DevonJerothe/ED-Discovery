import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import 'package:http/http.dart' as http;

import '../../data/classes/articles.dart';

class GalNetHome extends StatefulWidget {
  @override
  _GalNetHomeState createState() => _GalNetHomeState();
}

class _GalNetHomeState extends State<GalNetHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GalNet'),
      ),
      body: Container(
        child: FutureBuilder<List<Article>>(
          future: getNews(),
          builder: (context, news) {
            if (news.data != null && news.hasData) {
              final articles = news.data;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.orange,
                    )),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              Text(
                                articles[index].title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                articles[index].date,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(6),
                            child: HtmlView(
                              data: articles[index].content,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            } else if (news.hasData && news.data == null) {
              return Center(child: Text('No News'));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Future<List<Article>> getNews() async {
    var galNet = await http.get('https://www.alpha-orbital.com/galnet-feed');

    var jsonObject =
        (jsonDecode(galNet.body) as List).cast<Map<String, dynamic>>();
    var articles =
        jsonObject.map((e) => e == null ? null : Article.fromJson(e)).toList();

    return articles;
  }
}
