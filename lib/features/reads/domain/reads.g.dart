// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reads _$$_ReadsFromJson(Map<String, dynamic> json) => _$_Reads(
      author: json['author'] as String,
      content: json['content'] as String,
      heading: json['heading'] as String,
      newsImage: json['newsImage'] as String,
      publisher: json['publisher'] as String,
      tag: json['tag'] as String,
      summary:
          (json['summary'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ReadsToJson(_$_Reads instance) => <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'heading': instance.heading,
      'newsImage': instance.newsImage,
      'publisher': instance.publisher,
      'tag': instance.tag,
      'summary': instance.summary,
    };
