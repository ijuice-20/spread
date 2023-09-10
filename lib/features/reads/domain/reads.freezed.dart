// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reads _$ReadsFromJson(Map<String, dynamic> json) {
  return _Reads.fromJson(json);
}

/// @nodoc
mixin _$Reads {
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get heading => throw _privateConstructorUsedError;
  String get newsImage => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  List<String> get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadsCopyWith<Reads> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadsCopyWith<$Res> {
  factory $ReadsCopyWith(Reads value, $Res Function(Reads) then) =
      _$ReadsCopyWithImpl<$Res, Reads>;
  @useResult
  $Res call(
      {String author,
      String content,
      String heading,
      String newsImage,
      String publisher,
      String profileImage,
      String tag,
      List<String> summary});
}

/// @nodoc
class _$ReadsCopyWithImpl<$Res, $Val extends Reads>
    implements $ReadsCopyWith<$Res> {
  _$ReadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
    Object? heading = null,
    Object? newsImage = null,
    Object? publisher = null,
    Object? profileImage = null,
    Object? tag = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String,
      newsImage: null == newsImage
          ? _value.newsImage
          : newsImage // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadsCopyWith<$Res> implements $ReadsCopyWith<$Res> {
  factory _$$_ReadsCopyWith(_$_Reads value, $Res Function(_$_Reads) then) =
      __$$_ReadsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      String content,
      String heading,
      String newsImage,
      String publisher,
      String profileImage,
      String tag,
      List<String> summary});
}

/// @nodoc
class __$$_ReadsCopyWithImpl<$Res> extends _$ReadsCopyWithImpl<$Res, _$_Reads>
    implements _$$_ReadsCopyWith<$Res> {
  __$$_ReadsCopyWithImpl(_$_Reads _value, $Res Function(_$_Reads) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
    Object? heading = null,
    Object? newsImage = null,
    Object? publisher = null,
    Object? profileImage = null,
    Object? tag = null,
    Object? summary = null,
  }) {
    return _then(_$_Reads(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String,
      newsImage: null == newsImage
          ? _value.newsImage
          : newsImage // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value._summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reads implements _Reads {
  _$_Reads(
      {required this.author,
      required this.content,
      required this.heading,
      required this.newsImage,
      required this.publisher,
      required this.profileImage,
      required this.tag,
      required final List<String> summary})
      : _summary = summary;

  factory _$_Reads.fromJson(Map<String, dynamic> json) =>
      _$$_ReadsFromJson(json);

  @override
  final String author;
  @override
  final String content;
  @override
  final String heading;
  @override
  final String newsImage;
  @override
  final String publisher;
  @override
  final String profileImage;
  @override
  final String tag;
  final List<String> _summary;
  @override
  List<String> get summary {
    if (_summary is EqualUnmodifiableListView) return _summary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summary);
  }

  @override
  String toString() {
    return 'Reads(author: $author, content: $content, heading: $heading, newsImage: $newsImage, publisher: $publisher, profileImage: $profileImage, tag: $tag, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reads &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.newsImage, newsImage) ||
                other.newsImage == newsImage) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            const DeepCollectionEquality().equals(other._summary, _summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      author,
      content,
      heading,
      newsImage,
      publisher,
      profileImage,
      tag,
      const DeepCollectionEquality().hash(_summary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadsCopyWith<_$_Reads> get copyWith =>
      __$$_ReadsCopyWithImpl<_$_Reads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadsToJson(
      this,
    );
  }
}

abstract class _Reads implements Reads {
  factory _Reads(
      {required final String author,
      required final String content,
      required final String heading,
      required final String newsImage,
      required final String publisher,
      required final String profileImage,
      required final String tag,
      required final List<String> summary}) = _$_Reads;

  factory _Reads.fromJson(Map<String, dynamic> json) = _$_Reads.fromJson;

  @override
  String get author;
  @override
  String get content;
  @override
  String get heading;
  @override
  String get newsImage;
  @override
  String get publisher;
  @override
  String get profileImage;
  @override
  String get tag;
  @override
  List<String> get summary;
  @override
  @JsonKey(ignore: true)
  _$$_ReadsCopyWith<_$_Reads> get copyWith =>
      throw _privateConstructorUsedError;
}
