// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      author: json['author'] as String,
      content: json['content'] as String,
      heading: json['heading'] as String,
      newsImage: json['newsImage'] as String,
      publisher: json['publisher'] as String,
      tag: json['tag'] as String,
      summary:
          (json['summary'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'heading': instance.heading,
      'newsImage': instance.newsImage,
      'publisher': instance.publisher,
      'tag': instance.tag,
      'summary': instance.summary,
    };
