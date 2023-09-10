// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'glance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Glance _$GlanceFromJson(Map<String, dynamic> json) {
  return _Glance.fromJson(json);
}

/// @nodoc
mixin _$Glance {
  String get publisher => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get profileImage =>
      throw _privateConstructorUsedError; // required DateTime publishedAt,
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlanceCopyWith<Glance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlanceCopyWith<$Res> {
  factory $GlanceCopyWith(Glance value, $Res Function(Glance) then) =
      _$GlanceCopyWithImpl<$Res, Glance>;
  @useResult
  $Res call(
      {String publisher, String content, String profileImage, String? image});
}

/// @nodoc
class _$GlanceCopyWithImpl<$Res, $Val extends Glance>
    implements $GlanceCopyWith<$Res> {
  _$GlanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisher = null,
    Object? content = null,
    Object? profileImage = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GlanceCopyWith<$Res> implements $GlanceCopyWith<$Res> {
  factory _$$_GlanceCopyWith(_$_Glance value, $Res Function(_$_Glance) then) =
      __$$_GlanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String publisher, String content, String profileImage, String? image});
}

/// @nodoc
class __$$_GlanceCopyWithImpl<$Res>
    extends _$GlanceCopyWithImpl<$Res, _$_Glance>
    implements _$$_GlanceCopyWith<$Res> {
  __$$_GlanceCopyWithImpl(_$_Glance _value, $Res Function(_$_Glance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisher = null,
    Object? content = null,
    Object? profileImage = null,
    Object? image = freezed,
  }) {
    return _then(_$_Glance(
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Glance implements _Glance {
  _$_Glance(
      {required this.publisher,
      required this.content,
      required this.profileImage,
      this.image});

  factory _$_Glance.fromJson(Map<String, dynamic> json) =>
      _$$_GlanceFromJson(json);

  @override
  final String publisher;
  @override
  final String content;
  @override
  final String profileImage;
// required DateTime publishedAt,
  @override
  final String? image;

  @override
  String toString() {
    return 'Glance(publisher: $publisher, content: $content, profileImage: $profileImage, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Glance &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publisher, content, profileImage, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlanceCopyWith<_$_Glance> get copyWith =>
      __$$_GlanceCopyWithImpl<_$_Glance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GlanceToJson(
      this,
    );
  }
}

abstract class _Glance implements Glance {
  factory _Glance(
      {required final String publisher,
      required final String content,
      required final String profileImage,
      final String? image}) = _$_Glance;

  factory _Glance.fromJson(Map<String, dynamic> json) = _$_Glance.fromJson;

  @override
  String get publisher;
  @override
  String get content;
  @override
  String get profileImage;
  @override // required DateTime publishedAt,
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_GlanceCopyWith<_$_Glance> get copyWith =>
      throw _privateConstructorUsedError;
}
