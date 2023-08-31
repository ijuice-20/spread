import 'package:freezed_annotation/freezed_annotation.dart';

part 'reads.freezed.dart';
part 'reads.g.dart';

@freezed
class Reads with _$Reads {
  factory Reads({
    required String author,
    required String content,
    required String heading,
    required String newsImage,
    required String publisher,
    required String tag,
    required List<String> summary,
  }) = _Reads;

  factory Reads.fromJson(Map<String, dynamic> json) => _$ReadsFromJson(json);
}
