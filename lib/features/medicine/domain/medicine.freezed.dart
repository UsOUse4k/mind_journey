// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Medicine {
  String get id => throw _privateConstructorUsedError;
  NotEmptyString get name => throw _privateConstructorUsedError;
  MedicineReleaseForm get releaseForm => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  int get dose => throw _privateConstructorUsedError;
  bool get isConsumed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicineCopyWith<Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineCopyWith<$Res> {
  factory $MedicineCopyWith(Medicine value, $Res Function(Medicine) then) =
      _$MedicineCopyWithImpl<$Res, Medicine>;
  @useResult
  $Res call(
      {String id,
      NotEmptyString name,
      MedicineReleaseForm releaseForm,
      DateTime time,
      int dose,
      bool isConsumed});
}

/// @nodoc
class _$MedicineCopyWithImpl<$Res, $Val extends Medicine>
    implements $MedicineCopyWith<$Res> {
  _$MedicineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? releaseForm = null,
    Object? time = null,
    Object? dose = null,
    Object? isConsumed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NotEmptyString,
      releaseForm: null == releaseForm
          ? _value.releaseForm
          : releaseForm // ignore: cast_nullable_to_non_nullable
              as MedicineReleaseForm,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as int,
      isConsumed: null == isConsumed
          ? _value.isConsumed
          : isConsumed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicineImplCopyWith<$Res>
    implements $MedicineCopyWith<$Res> {
  factory _$$MedicineImplCopyWith(
          _$MedicineImpl value, $Res Function(_$MedicineImpl) then) =
      __$$MedicineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      NotEmptyString name,
      MedicineReleaseForm releaseForm,
      DateTime time,
      int dose,
      bool isConsumed});
}

/// @nodoc
class __$$MedicineImplCopyWithImpl<$Res>
    extends _$MedicineCopyWithImpl<$Res, _$MedicineImpl>
    implements _$$MedicineImplCopyWith<$Res> {
  __$$MedicineImplCopyWithImpl(
      _$MedicineImpl _value, $Res Function(_$MedicineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? releaseForm = null,
    Object? time = null,
    Object? dose = null,
    Object? isConsumed = null,
  }) {
    return _then(_$MedicineImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NotEmptyString,
      releaseForm: null == releaseForm
          ? _value.releaseForm
          : releaseForm // ignore: cast_nullable_to_non_nullable
              as MedicineReleaseForm,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as int,
      isConsumed: null == isConsumed
          ? _value.isConsumed
          : isConsumed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MedicineImpl extends _Medicine {
  const _$MedicineImpl(
      {required this.id,
      required this.name,
      required this.releaseForm,
      required this.time,
      required this.dose,
      required this.isConsumed})
      : super._();

  @override
  final String id;
  @override
  final NotEmptyString name;
  @override
  final MedicineReleaseForm releaseForm;
  @override
  final DateTime time;
  @override
  final int dose;
  @override
  final bool isConsumed;

  @override
  String toString() {
    return 'Medicine(id: $id, name: $name, releaseForm: $releaseForm, time: $time, dose: $dose, isConsumed: $isConsumed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseForm, releaseForm) ||
                other.releaseForm == releaseForm) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.isConsumed, isConsumed) ||
                other.isConsumed == isConsumed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, releaseForm, time, dose, isConsumed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicineImplCopyWith<_$MedicineImpl> get copyWith =>
      __$$MedicineImplCopyWithImpl<_$MedicineImpl>(this, _$identity);
}

abstract class _Medicine extends Medicine {
  const factory _Medicine(
      {required final String id,
      required final NotEmptyString name,
      required final MedicineReleaseForm releaseForm,
      required final DateTime time,
      required final int dose,
      required final bool isConsumed}) = _$MedicineImpl;
  const _Medicine._() : super._();

  @override
  String get id;
  @override
  NotEmptyString get name;
  @override
  MedicineReleaseForm get releaseForm;
  @override
  DateTime get time;
  @override
  int get dose;
  @override
  bool get isConsumed;
  @override
  @JsonKey(ignore: true)
  _$$MedicineImplCopyWith<_$MedicineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
