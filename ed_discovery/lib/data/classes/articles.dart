import 'package:json_annotation/json_annotation.dart';

part 'articles.g.dart';

@JsonSerializable(nullable: true)
class Article {
  final String title;
  final String date;
  final String content;

  Article({this.title, this.date, this.content});

  factory Article.fromJson(Map<String, dynamic> data) =>
      _$ArticleFromJson(data);
  @override
  String toString() {
    // TODO: implement toString
    return '$title';
  }
}
