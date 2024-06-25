// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_medicine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateMedicineEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(MedicineReleaseForm releaseForm)
        releaseFormChanged,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(int dose) doseChanged,
    required TResult Function() createMedicinePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult? Function(DateTime time)? timeChanged,
    TResult? Function(int dose)? doseChanged,
    TResult? Function()? createMedicinePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(int dose)? doseChanged,
    TResult Function()? createMedicinePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReleaseFormChanged value) releaseFormChanged,
    required TResult Function(_TimeChanged value) timeChanged,
    required TResult Function(_DoseChanged value) doseChanged,
    required TResult Function(_CreateMedicinePressed value)
        createMedicinePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult? Function(_TimeChanged value)? timeChanged,
    TResult? Function(_DoseChanged value)? doseChanged,
    TResult? Function(_CreateMedicinePressed value)? createMedicinePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult Function(_TimeChanged value)? timeChanged,
    TResult Function(_DoseChanged value)? doseChanged,
    TResult Function(_CreateMedicinePressed value)? createMedicinePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMedicineEventCopyWith<$Res> {
  factory $CreateMedicineEventCopyWith(
          CreateMedicineEvent value, $Res Function(CreateMedicineEvent) then) =
      _$CreateMedicineEventCopyWithImpl<$Res, CreateMedicineEvent>;
}

/// @nodoc
class _$CreateMedicineEventCopyWithImpl<$Res, $Val extends CreateMedicineEvent>
    implements $CreateMedicineEventCopyWith<$Res> {
  _$CreateMedicineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$CreateMedicineEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateMedicineEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(MedicineReleaseForm releaseForm)
        releaseFormChanged,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(int dose) doseChanged,
    required TResult Function() createMedicinePressed,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult? Function(DateTime time)? timeChanged,
    TResult? Function(int dose)? doseChanged,
    TResult? Function()? createMedicinePressed,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(int dose)? doseChanged,
    TResult Function()? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReleaseFormChanged value) releaseFormChanged,
    required TResult Function(_TimeChanged value) timeChanged,
    required TResult Function(_DoseChanged value) doseChanged,
    required TResult Function(_CreateMedicinePressed value)
        createMedicinePressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult? Function(_TimeChanged value)? timeChanged,
    TResult? Function(_DoseChanged value)? doseChanged,
    TResult? Function(_CreateMedicinePressed value)? createMedicinePressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult Function(_TimeChanged value)? timeChanged,
    TResult Function(_DoseChanged value)? doseChanged,
    TResult Function(_CreateMedicinePressed value)? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CreateMedicineEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReleaseFormChangedImplCopyWith<$Res> {
  factory _$$ReleaseFormChangedImplCopyWith(_$ReleaseFormChangedImpl value,
          $Res Function(_$ReleaseFormChangedImpl) then) =
      __$$ReleaseFormChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MedicineReleaseForm releaseForm});
}

/// @nodoc
class __$$ReleaseFormChangedImplCopyWithImpl<$Res>
    extends _$CreateMedicineEventCopyWithImpl<$Res, _$ReleaseFormChangedImpl>
    implements _$$ReleaseFormChangedImplCopyWith<$Res> {
  __$$ReleaseFormChangedImplCopyWithImpl(_$ReleaseFormChangedImpl _value,
      $Res Function(_$ReleaseFormChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseForm = null,
  }) {
    return _then(_$ReleaseFormChangedImpl(
      null == releaseForm
          ? _value.releaseForm
          : releaseForm // ignore: cast_nullable_to_non_nullable
              as MedicineReleaseForm,
    ));
  }
}

/// @nodoc

class _$ReleaseFormChangedImpl implements _ReleaseFormChanged {
  const _$ReleaseFormChangedImpl(this.releaseForm);

  @override
  final MedicineReleaseForm releaseForm;

  @override
  String toString() {
    return 'CreateMedicineEvent.releaseFormChanged(releaseForm: $releaseForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleaseFormChangedImpl &&
            (identical(other.releaseForm, releaseForm) ||
                other.releaseForm == releaseForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, releaseForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleaseFormChangedImplCopyWith<_$ReleaseFormChangedImpl> get copyWith =>
      __$$ReleaseFormChangedImplCopyWithImpl<_$ReleaseFormChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(MedicineReleaseForm releaseForm)
        releaseFormChanged,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(int dose) doseChanged,
    required TResult Function() createMedicinePressed,
  }) {
    return releaseFormChanged(releaseForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult? Function(DateTime time)? timeChanged,
    TResult? Function(int dose)? doseChanged,
    TResult? Function()? createMedicinePressed,
  }) {
    return releaseFormChanged?.call(releaseForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(int dose)? doseChanged,
    TResult Function()? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (releaseFormChanged != null) {
      return releaseFormChanged(releaseForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReleaseFormChanged value) releaseFormChanged,
    required TResult Function(_TimeChanged value) timeChanged,
    required TResult Function(_DoseChanged value) doseChanged,
    required TResult Function(_CreateMedicinePressed value)
        createMedicinePressed,
  }) {
    return releaseFormChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult? Function(_TimeChanged value)? timeChanged,
    TResult? Function(_DoseChanged value)? doseChanged,
    TResult? Function(_CreateMedicinePressed value)? createMedicinePressed,
  }) {
    return releaseFormChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult Function(_TimeChanged value)? timeChanged,
    TResult Function(_DoseChanged value)? doseChanged,
    TResult Function(_CreateMedicinePressed value)? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (releaseFormChanged != null) {
      return releaseFormChanged(this);
    }
    return orElse();
  }
}

abstract class _ReleaseFormChanged implements CreateMedicineEvent {
  const factory _ReleaseFormChanged(final MedicineReleaseForm releaseForm) =
      _$ReleaseFormChangedImpl;

  MedicineReleaseForm get releaseForm;
  @JsonKey(ignore: true)
  _$$ReleaseFormChangedImplCopyWith<_$ReleaseFormChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeChangedImplCopyWith<$Res> {
  factory _$$TimeChangedImplCopyWith(
          _$TimeChangedImpl value, $Res Function(_$TimeChangedImpl) then) =
      __$$TimeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class __$$TimeChangedImplCopyWithImpl<$Res>
    extends _$CreateMedicineEventCopyWithImpl<$Res, _$TimeChangedImpl>
    implements _$$TimeChangedImplCopyWith<$Res> {
  __$$TimeChangedImplCopyWithImpl(
      _$TimeChangedImpl _value, $Res Function(_$TimeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$TimeChangedImpl(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TimeChangedImpl implements _TimeChanged {
  const _$TimeChangedImpl(this.time);

  @override
  final DateTime time;

  @override
  String toString() {
    return 'CreateMedicineEvent.timeChanged(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeChangedImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeChangedImplCopyWith<_$TimeChangedImpl> get copyWith =>
      __$$TimeChangedImplCopyWithImpl<_$TimeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(MedicineReleaseForm releaseForm)
        releaseFormChanged,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(int dose) doseChanged,
    required TResult Function() createMedicinePressed,
  }) {
    return timeChanged(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult? Function(DateTime time)? timeChanged,
    TResult? Function(int dose)? doseChanged,
    TResult? Function()? createMedicinePressed,
  }) {
    return timeChanged?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(int dose)? doseChanged,
    TResult Function()? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (timeChanged != null) {
      return timeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReleaseFormChanged value) releaseFormChanged,
    required TResult Function(_TimeChanged value) timeChanged,
    required TResult Function(_DoseChanged value) doseChanged,
    required TResult Function(_CreateMedicinePressed value)
        createMedicinePressed,
  }) {
    return timeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult? Function(_TimeChanged value)? timeChanged,
    TResult? Function(_DoseChanged value)? doseChanged,
    TResult? Function(_CreateMedicinePressed value)? createMedicinePressed,
  }) {
    return timeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult Function(_TimeChanged value)? timeChanged,
    TResult Function(_DoseChanged value)? doseChanged,
    TResult Function(_CreateMedicinePressed value)? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (timeChanged != null) {
      return timeChanged(this);
    }
    return orElse();
  }
}

abstract class _TimeChanged implements CreateMedicineEvent {
  const factory _TimeChanged(final DateTime time) = _$TimeChangedImpl;

  DateTime get time;
  @JsonKey(ignore: true)
  _$$TimeChangedImplCopyWith<_$TimeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoseChangedImplCopyWith<$Res> {
  factory _$$DoseChangedImplCopyWith(
          _$DoseChangedImpl value, $Res Function(_$DoseChangedImpl) then) =
      __$$DoseChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int dose});
}

/// @nodoc
class __$$DoseChangedImplCopyWithImpl<$Res>
    extends _$CreateMedicineEventCopyWithImpl<$Res, _$DoseChangedImpl>
    implements _$$DoseChangedImplCopyWith<$Res> {
  __$$DoseChangedImplCopyWithImpl(
      _$DoseChangedImpl _value, $Res Function(_$DoseChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
  }) {
    return _then(_$DoseChangedImpl(
      null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DoseChangedImpl implements _DoseChanged {
  const _$DoseChangedImpl(this.dose);

  @override
  final int dose;

  @override
  String toString() {
    return 'CreateMedicineEvent.doseChanged(dose: $dose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoseChangedImpl &&
            (identical(other.dose, dose) || other.dose == dose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoseChangedImplCopyWith<_$DoseChangedImpl> get copyWith =>
      __$$DoseChangedImplCopyWithImpl<_$DoseChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(MedicineReleaseForm releaseForm)
        releaseFormChanged,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(int dose) doseChanged,
    required TResult Function() createMedicinePressed,
  }) {
    return doseChanged(dose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult? Function(DateTime time)? timeChanged,
    TResult? Function(int dose)? doseChanged,
    TResult? Function()? createMedicinePressed,
  }) {
    return doseChanged?.call(dose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(int dose)? doseChanged,
    TResult Function()? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (doseChanged != null) {
      return doseChanged(dose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReleaseFormChanged value) releaseFormChanged,
    required TResult Function(_TimeChanged value) timeChanged,
    required TResult Function(_DoseChanged value) doseChanged,
    required TResult Function(_CreateMedicinePressed value)
        createMedicinePressed,
  }) {
    return doseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult? Function(_TimeChanged value)? timeChanged,
    TResult? Function(_DoseChanged value)? doseChanged,
    TResult? Function(_CreateMedicinePressed value)? createMedicinePressed,
  }) {
    return doseChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult Function(_TimeChanged value)? timeChanged,
    TResult Function(_DoseChanged value)? doseChanged,
    TResult Function(_CreateMedicinePressed value)? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (doseChanged != null) {
      return doseChanged(this);
    }
    return orElse();
  }
}

abstract class _DoseChanged implements CreateMedicineEvent {
  const factory _DoseChanged(final int dose) = _$DoseChangedImpl;

  int get dose;
  @JsonKey(ignore: true)
  _$$DoseChangedImplCopyWith<_$DoseChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateMedicinePressedImplCopyWith<$Res> {
  factory _$$CreateMedicinePressedImplCopyWith(
          _$CreateMedicinePressedImpl value,
          $Res Function(_$CreateMedicinePressedImpl) then) =
      __$$CreateMedicinePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateMedicinePressedImplCopyWithImpl<$Res>
    extends _$CreateMedicineEventCopyWithImpl<$Res, _$CreateMedicinePressedImpl>
    implements _$$CreateMedicinePressedImplCopyWith<$Res> {
  __$$CreateMedicinePressedImplCopyWithImpl(_$CreateMedicinePressedImpl _value,
      $Res Function(_$CreateMedicinePressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateMedicinePressedImpl implements _CreateMedicinePressed {
  const _$CreateMedicinePressedImpl();

  @override
  String toString() {
    return 'CreateMedicineEvent.createMedicinePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMedicinePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(MedicineReleaseForm releaseForm)
        releaseFormChanged,
    required TResult Function(DateTime time) timeChanged,
    required TResult Function(int dose) doseChanged,
    required TResult Function() createMedicinePressed,
  }) {
    return createMedicinePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult? Function(DateTime time)? timeChanged,
    TResult? Function(int dose)? doseChanged,
    TResult? Function()? createMedicinePressed,
  }) {
    return createMedicinePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(MedicineReleaseForm releaseForm)? releaseFormChanged,
    TResult Function(DateTime time)? timeChanged,
    TResult Function(int dose)? doseChanged,
    TResult Function()? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (createMedicinePressed != null) {
      return createMedicinePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReleaseFormChanged value) releaseFormChanged,
    required TResult Function(_TimeChanged value) timeChanged,
    required TResult Function(_DoseChanged value) doseChanged,
    required TResult Function(_CreateMedicinePressed value)
        createMedicinePressed,
  }) {
    return createMedicinePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult? Function(_TimeChanged value)? timeChanged,
    TResult? Function(_DoseChanged value)? doseChanged,
    TResult? Function(_CreateMedicinePressed value)? createMedicinePressed,
  }) {
    return createMedicinePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReleaseFormChanged value)? releaseFormChanged,
    TResult Function(_TimeChanged value)? timeChanged,
    TResult Function(_DoseChanged value)? doseChanged,
    TResult Function(_CreateMedicinePressed value)? createMedicinePressed,
    required TResult orElse(),
  }) {
    if (createMedicinePressed != null) {
      return createMedicinePressed(this);
    }
    return orElse();
  }
}

abstract class _CreateMedicinePressed implements CreateMedicineEvent {
  const factory _CreateMedicinePressed() = _$CreateMedicinePressedImpl;
}

/// @nodoc
mixin _$CreateMedicineState {
  NotEmptyString get name => throw _privateConstructorUsedError;
  MedicineReleaseForm? get releaseForm => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  int? get dose => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<MedicineFailure, Medicine>>
      get medicineFailureOrMedicineOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMedicineStateCopyWith<CreateMedicineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMedicineStateCopyWith<$Res> {
  factory $CreateMedicineStateCopyWith(
          CreateMedicineState value, $Res Function(CreateMedicineState) then) =
      _$CreateMedicineStateCopyWithImpl<$Res, CreateMedicineState>;
  @useResult
  $Res call(
      {NotEmptyString name,
      MedicineReleaseForm? releaseForm,
      DateTime? time,
      int? dose,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MedicineFailure, Medicine>>
          medicineFailureOrMedicineOption});
}

/// @nodoc
class _$CreateMedicineStateCopyWithImpl<$Res, $Val extends CreateMedicineState>
    implements $CreateMedicineStateCopyWith<$Res> {
  _$CreateMedicineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? releaseForm = freezed,
    Object? time = freezed,
    Object? dose = freezed,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? medicineFailureOrMedicineOption = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NotEmptyString,
      releaseForm: freezed == releaseForm
          ? _value.releaseForm
          : releaseForm // ignore: cast_nullable_to_non_nullable
              as MedicineReleaseForm?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as int?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      medicineFailureOrMedicineOption: null == medicineFailureOrMedicineOption
          ? _value.medicineFailureOrMedicineOption
          : medicineFailureOrMedicineOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MedicineFailure, Medicine>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateMedicineStateImplCopyWith<$Res>
    implements $CreateMedicineStateCopyWith<$Res> {
  factory _$$CreateMedicineStateImplCopyWith(_$CreateMedicineStateImpl value,
          $Res Function(_$CreateMedicineStateImpl) then) =
      __$$CreateMedicineStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotEmptyString name,
      MedicineReleaseForm? releaseForm,
      DateTime? time,
      int? dose,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<MedicineFailure, Medicine>>
          medicineFailureOrMedicineOption});
}

/// @nodoc
class __$$CreateMedicineStateImplCopyWithImpl<$Res>
    extends _$CreateMedicineStateCopyWithImpl<$Res, _$CreateMedicineStateImpl>
    implements _$$CreateMedicineStateImplCopyWith<$Res> {
  __$$CreateMedicineStateImplCopyWithImpl(_$CreateMedicineStateImpl _value,
      $Res Function(_$CreateMedicineStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? releaseForm = freezed,
    Object? time = freezed,
    Object? dose = freezed,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? medicineFailureOrMedicineOption = null,
  }) {
    return _then(_$CreateMedicineStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NotEmptyString,
      releaseForm: freezed == releaseForm
          ? _value.releaseForm
          : releaseForm // ignore: cast_nullable_to_non_nullable
              as MedicineReleaseForm?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as int?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      medicineFailureOrMedicineOption: null == medicineFailureOrMedicineOption
          ? _value.medicineFailureOrMedicineOption
          : medicineFailureOrMedicineOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MedicineFailure, Medicine>>,
    ));
  }
}

/// @nodoc

class _$CreateMedicineStateImpl implements _CreateMedicineState {
  const _$CreateMedicineStateImpl(
      {required this.name,
      required this.releaseForm,
      required this.time,
      required this.dose,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.medicineFailureOrMedicineOption});

  @override
  final NotEmptyString name;
  @override
  final MedicineReleaseForm? releaseForm;
  @override
  final DateTime? time;
  @override
  final int? dose;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<MedicineFailure, Medicine>>
      medicineFailureOrMedicineOption;

  @override
  String toString() {
    return 'CreateMedicineState(name: $name, releaseForm: $releaseForm, time: $time, dose: $dose, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, medicineFailureOrMedicineOption: $medicineFailureOrMedicineOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMedicineStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseForm, releaseForm) ||
                other.releaseForm == releaseForm) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.medicineFailureOrMedicineOption,
                    medicineFailureOrMedicineOption) ||
                other.medicineFailureOrMedicineOption ==
                    medicineFailureOrMedicineOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, releaseForm, time, dose,
      showErrorMessages, isSubmitting, medicineFailureOrMedicineOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMedicineStateImplCopyWith<_$CreateMedicineStateImpl> get copyWith =>
      __$$CreateMedicineStateImplCopyWithImpl<_$CreateMedicineStateImpl>(
          this, _$identity);
}

abstract class _CreateMedicineState implements CreateMedicineState {
  const factory _CreateMedicineState(
      {required final NotEmptyString name,
      required final MedicineReleaseForm? releaseForm,
      required final DateTime? time,
      required final int? dose,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<MedicineFailure, Medicine>>
          medicineFailureOrMedicineOption}) = _$CreateMedicineStateImpl;

  @override
  NotEmptyString get name;
  @override
  MedicineReleaseForm? get releaseForm;
  @override
  DateTime? get time;
  @override
  int? get dose;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<MedicineFailure, Medicine>> get medicineFailureOrMedicineOption;
  @override
  @JsonKey(ignore: true)
  _$$CreateMedicineStateImplCopyWith<_$CreateMedicineStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
