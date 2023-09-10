import 'package:freezed_annotation/freezed_annotation.dart';

part 'glance.freezed.dart';
part 'glance.g.dart';

@freezed
class Glance with _$Glance {
  factory Glance({
    required String publisher,
    required String content,
    required String profileImage,
    // required DateTime publishedAt,
    String? image,
  }) = _Glance;

  factory Glance.fromJson(Map<String, dynamic> json) => _$GlanceFromJson(json);
}
