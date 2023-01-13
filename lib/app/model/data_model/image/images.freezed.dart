// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  int? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<ImageList>? get imageList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call({int? created, @JsonKey(name: 'data') List<ImageList>? imageList});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = freezed,
    Object? imageList = freezed,
  }) {
    return _then(_value.copyWith(
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      imageList: freezed == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<ImageList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$_ImagesCopyWith(_$_Images value, $Res Function(_$_Images) then) =
      __$$_ImagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? created, @JsonKey(name: 'data') List<ImageList>? imageList});
}

/// @nodoc
class __$$_ImagesCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$_Images>
    implements _$$_ImagesCopyWith<$Res> {
  __$$_ImagesCopyWithImpl(_$_Images _value, $Res Function(_$_Images) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = freezed,
    Object? imageList = freezed,
  }) {
    return _then(_$_Images(
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      imageList: freezed == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<ImageList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Images implements _Images {
  const _$_Images(
      {this.created, @JsonKey(name: 'data') final List<ImageList>? imageList})
      : _imageList = imageList;

  factory _$_Images.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesFromJson(json);

  @override
  final int? created;
  final List<ImageList>? _imageList;
  @override
  @JsonKey(name: 'data')
  List<ImageList>? get imageList {
    final value = _imageList;
    if (value == null) return null;
    if (_imageList is EqualUnmodifiableListView) return _imageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Images(created: $created, imageList: $imageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Images &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, created, const DeepCollectionEquality().hash(_imageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesCopyWith<_$_Images> get copyWith =>
      __$$_ImagesCopyWithImpl<_$_Images>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
      {final int? created,
      @JsonKey(name: 'data') final List<ImageList>? imageList}) = _$_Images;

  factory _Images.fromJson(Map<String, dynamic> json) = _$_Images.fromJson;

  @override
  int? get created;
  @override
  @JsonKey(name: 'data')
  List<ImageList>? get imageList;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesCopyWith<_$_Images> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageList _$ImageListFromJson(Map<String, dynamic> json) {
  return _ImageList.fromJson(json);
}

/// @nodoc
mixin _$ImageList {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageListCopyWith<ImageList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageListCopyWith<$Res> {
  factory $ImageListCopyWith(ImageList value, $Res Function(ImageList) then) =
      _$ImageListCopyWithImpl<$Res, ImageList>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$ImageListCopyWithImpl<$Res, $Val extends ImageList>
    implements $ImageListCopyWith<$Res> {
  _$ImageListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageListCopyWith<$Res> implements $ImageListCopyWith<$Res> {
  factory _$$_ImageListCopyWith(
          _$_ImageList value, $Res Function(_$_ImageList) then) =
      __$$_ImageListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$_ImageListCopyWithImpl<$Res>
    extends _$ImageListCopyWithImpl<$Res, _$_ImageList>
    implements _$$_ImageListCopyWith<$Res> {
  __$$_ImageListCopyWithImpl(
      _$_ImageList _value, $Res Function(_$_ImageList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_ImageList(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageList implements _ImageList {
  const _$_ImageList({this.url});

  factory _$_ImageList.fromJson(Map<String, dynamic> json) =>
      _$$_ImageListFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'ImageList(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageList &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageListCopyWith<_$_ImageList> get copyWith =>
      __$$_ImageListCopyWithImpl<_$_ImageList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageListToJson(
      this,
    );
  }
}

abstract class _ImageList implements ImageList {
  const factory _ImageList({final String? url}) = _$_ImageList;

  factory _ImageList.fromJson(Map<String, dynamic> json) =
      _$_ImageList.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_ImageListCopyWith<_$_ImageList> get copyWith =>
      throw _privateConstructorUsedError;
}
