import 'package:json_annotation/json_annotation.dart';

part 'Post.g.dart';

@JsonSerializable()
class Post {
  final int id;
  final String title;
  final int price;
  final String desc;
  final String category;
  final String image;


  // From JSON to Post object
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Post({required this.id, required this.title, required this.price, required this.desc, required this.category, required this.image});

  // From Post object to JSON
  Map<String, dynamic> toJson() => _$PostToJson(this);
}