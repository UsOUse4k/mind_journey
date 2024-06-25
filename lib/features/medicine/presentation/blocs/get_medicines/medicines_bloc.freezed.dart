// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicines_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MedicinesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicines,
    required TResult Function(Medicine medicine) addNewMedicine,
    required TResult Function(Medicine medicine) updateMedicine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedicines,
    TResult? Function(Medicine medicine)? addNewMedicine,
    TResult? Function(Medicine medicine)? updateMedicine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicines,
    TResult Function(Medicine medicine)? addNewMedicine,
    TResult Function(Medicine medicine)? updateMedicine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicines value) getMedicines,
    required TResult Function(_AddNewMedicine value) addNewMedicine,
    required TResult Function(_UpdateMedicineId value) updateMedicine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMedicines value)? getMedicines,
    TResult? Function(_AddNewMedicine value)? addNewMedicine,
    TResult? Function(_UpdateMedicineId value)? updateMedicine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicines value)? getMedicines,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
    TResult Function(_UpdateMedicineId value)? updateMedicine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinesEventCopyWith<$Res> {
  factory $MedicinesEventCopyWith(
          MedicinesEvent value, $Res Function(MedicinesEvent) then) =
      _$MedicinesEventCopyWithImpl<$Res, MedicinesEvent>;
}

/// @nodoc
class _$MedicinesEventCopyWithImpl<$Res, $Val extends MedicinesEvent>
    implements $MedicinesEventCopyWith<$Res> {
  _$MedicinesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMedicinesImplCopyWith<$Res> {
  factory _$$GetMedicinesImplCopyWith(
          _$GetMedicinesImpl value, $Res Function(_$GetMedicinesImpl) then) =
      __$$GetMedicinesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMedicinesImplCopyWithImpl<$Res>
    extends _$MedicinesEventCopyWithImpl<$Res, _$GetMedicinesImpl>
    implements _$$GetMedicinesImplCopyWith<$Res> {
  __$$GetMedicinesImplCopyWithImpl(
      _$GetMedicinesImpl _value, $Res Function(_$GetMedicinesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMedicinesImpl implements _GetMedicines {
  const _$GetMedicinesImpl();

  @override
  String toString() {
    return 'MedicinesEvent.getMedicines()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMedicinesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicines,
    required TResult Function(Medicine medicine) addNewMedicine,
    required TResult Function(Medicine medicine) updateMedicine,
  }) {
    return getMedicines();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedicines,
    TResult? Function(Medicine medicine)? addNewMedicine,
    TResult? Function(Medicine medicine)? updateMedicine,
  }) {
    return getMedicines?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicines,
    TResult Function(Medicine medicine)? addNewMedicine,
    TResult Function(Medicine medicine)? updateMedicine,
    required TResult orElse(),
  }) {
    if (getMedicines != null) {
      return getMedicines();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicines value) getMedicines,
    required TResult Function(_AddNewMedicine value) addNewMedicine,
    required TResult Function(_UpdateMedicineId value) updateMedicine,
  }) {
    return getMedicines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMedicines value)? getMedicines,
    TResult? Function(_AddNewMedicine value)? addNewMedicine,
    TResult? Function(_UpdateMedicineId value)? updateMedicine,
  }) {
    return getMedicines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicines value)? getMedicines,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
    TResult Function(_UpdateMedicineId value)? updateMedicine,
    required TResult orElse(),
  }) {
    if (getMedicines != null) {
      return getMedicines(this);
    }
    return orElse();
  }
}

abstract class _GetMedicines implements MedicinesEvent {
  const factory _GetMedicines() = _$GetMedicinesImpl;
}

/// @nodoc
abstract class _$$AddNewMedicineImplCopyWith<$Res> {
  factory _$$AddNewMedicineImplCopyWith(_$AddNewMedicineImpl value,
          $Res Function(_$AddNewMedicineImpl) then) =
      __$$AddNewMedicineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Medicine medicine});

  $MedicineCopyWith<$Res> get medicine;
}

/// @nodoc
class __$$AddNewMedicineImplCopyWithImpl<$Res>
    extends _$MedicinesEventCopyWithImpl<$Res, _$AddNewMedicineImpl>
    implements _$$AddNewMedicineImplCopyWith<$Res> {
  __$$AddNewMedicineImplCopyWithImpl(
      _$AddNewMedicineImpl _value, $Res Function(_$AddNewMedicineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$AddNewMedicineImpl(
      null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicineCopyWith<$Res> get medicine {
    return $MedicineCopyWith<$Res>(_value.medicine, (value) {
      return _then(_value.copyWith(medicine: value));
    });
  }
}

/// @nodoc

class _$AddNewMedicineImpl implements _AddNewMedicine {
  const _$AddNewMedicineImpl(this.medicine);

  @override
  final Medicine medicine;

  @override
  String toString() {
    return 'MedicinesEvent.addNewMedicine(medicine: $medicine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewMedicineImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewMedicineImplCopyWith<_$AddNewMedicineImpl> get copyWith =>
      __$$AddNewMedicineImplCopyWithImpl<_$AddNewMedicineImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicines,
    required TResult Function(Medicine medicine) addNewMedicine,
    required TResult Function(Medicine medicine) updateMedicine,
  }) {
    return addNewMedicine(medicine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedicines,
    TResult? Function(Medicine medicine)? addNewMedicine,
    TResult? Function(Medicine medicine)? updateMedicine,
  }) {
    return addNewMedicine?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicines,
    TResult Function(Medicine medicine)? addNewMedicine,
    TResult Function(Medicine medicine)? updateMedicine,
    required TResult orElse(),
  }) {
    if (addNewMedicine != null) {
      return addNewMedicine(medicine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicines value) getMedicines,
    required TResult Function(_AddNewMedicine value) addNewMedicine,
    required TResult Function(_UpdateMedicineId value) updateMedicine,
  }) {
    return addNewMedicine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMedicines value)? getMedicines,
    TResult? Function(_AddNewMedicine value)? addNewMedicine,
    TResult? Function(_UpdateMedicineId value)? updateMedicine,
  }) {
    return addNewMedicine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicines value)? getMedicines,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
    TResult Function(_UpdateMedicineId value)? updateMedicine,
    required TResult orElse(),
  }) {
    if (addNewMedicine != null) {
      return addNewMedicine(this);
    }
    return orElse();
  }
}

abstract class _AddNewMedicine implements MedicinesEvent {
  const factory _AddNewMedicine(final Medicine medicine) = _$AddNewMedicineImpl;

  Medicine get medicine;
  @JsonKey(ignore: true)
  _$$AddNewMedicineImplCopyWith<_$AddNewMedicineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMedicineIdImplCopyWith<$Res> {
  factory _$$UpdateMedicineIdImplCopyWith(_$UpdateMedicineIdImpl value,
          $Res Function(_$UpdateMedicineIdImpl) then) =
      __$$UpdateMedicineIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Medicine medicine});

  $MedicineCopyWith<$Res> get medicine;
}

/// @nodoc
class __$$UpdateMedicineIdImplCopyWithImpl<$Res>
    extends _$MedicinesEventCopyWithImpl<$Res, _$UpdateMedicineIdImpl>
    implements _$$UpdateMedicineIdImplCopyWith<$Res> {
  __$$UpdateMedicineIdImplCopyWithImpl(_$UpdateMedicineIdImpl _value,
      $Res Function(_$UpdateMedicineIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$UpdateMedicineIdImpl(
      null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicineCopyWith<$Res> get medicine {
    return $MedicineCopyWith<$Res>(_value.medicine, (value) {
      return _then(_value.copyWith(medicine: value));
    });
  }
}

/// @nodoc

class _$UpdateMedicineIdImpl implements _UpdateMedicineId {
  const _$UpdateMedicineIdImpl(this.medicine);

  @override
  final Medicine medicine;

  @override
  String toString() {
    return 'MedicinesEvent.updateMedicine(medicine: $medicine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMedicineIdImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMedicineIdImplCopyWith<_$UpdateMedicineIdImpl> get copyWith =>
      __$$UpdateMedicineIdImplCopyWithImpl<_$UpdateMedicineIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicines,
    required TResult Function(Medicine medicine) addNewMedicine,
    required TResult Function(Medicine medicine) updateMedicine,
  }) {
    return updateMedicine(medicine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedicines,
    TResult? Function(Medicine medicine)? addNewMedicine,
    TResult? Function(Medicine medicine)? updateMedicine,
  }) {
    return updateMedicine?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicines,
    TResult Function(Medicine medicine)? addNewMedicine,
    TResult Function(Medicine medicine)? updateMedicine,
    required TResult orElse(),
  }) {
    if (updateMedicine != null) {
      return updateMedicine(medicine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicines value) getMedicines,
    required TResult Function(_AddNewMedicine value) addNewMedicine,
    required TResult Function(_UpdateMedicineId value) updateMedicine,
  }) {
    return updateMedicine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMedicines value)? getMedicines,
    TResult? Function(_AddNewMedicine value)? addNewMedicine,
    TResult? Function(_UpdateMedicineId value)? updateMedicine,
  }) {
    return updateMedicine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicines value)? getMedicines,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
    TResult Function(_UpdateMedicineId value)? updateMedicine,
    required TResult orElse(),
  }) {
    if (updateMedicine != null) {
      return updateMedicine(this);
    }
    return orElse();
  }
}

abstract class _UpdateMedicineId implements MedicinesEvent {
  const factory _UpdateMedicineId(final Medicine medicine) =
      _$UpdateMedicineIdImpl;

  Medicine get medicine;
  @JsonKey(ignore: true)
  _$$UpdateMedicineIdImplCopyWith<_$UpdateMedicineIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MedicinesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Medicine> medicines) loadSuccess,
    required TResult Function(MedicineFailure medicineFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Medicine> medicines)? loadSuccess,
    TResult? Function(MedicineFailure medicineFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Medicine> medicines)? loadSuccess,
    TResult Function(MedicineFailure medicineFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinesStateCopyWith<$Res> {
  factory $MedicinesStateCopyWith(
          MedicinesState value, $Res Function(MedicinesState) then) =
      _$MedicinesStateCopyWithImpl<$Res, MedicinesState>;
}

/// @nodoc
class _$MedicinesStateCopyWithImpl<$Res, $Val extends MedicinesState>
    implements $MedicinesStateCopyWith<$Res> {
  _$MedicinesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MedicinesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MedicinesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Medicine> medicines) loadSuccess,
    required TResult Function(MedicineFailure medicineFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Medicine> medicines)? loadSuccess,
    TResult? Function(MedicineFailure medicineFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Medicine> medicines)? loadSuccess,
    TResult Function(MedicineFailure medicineFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MedicinesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$MedicinesStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'MedicinesState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Medicine> medicines) loadSuccess,
    required TResult Function(MedicineFailure medicineFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Medicine> medicines)? loadSuccess,
    TResult? Function(MedicineFailure medicineFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Medicine> medicines)? loadSuccess,
    TResult Function(MedicineFailure medicineFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements MedicinesState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Medicine> medicines});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$MedicinesStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == medicines
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(final List<Medicine> medicines)
      : _medicines = medicines;

  final List<Medicine> _medicines;
  @override
  List<Medicine> get medicines {
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  String toString() {
    return 'MedicinesState.loadSuccess(medicines: $medicines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_medicines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Medicine> medicines) loadSuccess,
    required TResult Function(MedicineFailure medicineFailure) loadFailure,
  }) {
    return loadSuccess(medicines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Medicine> medicines)? loadSuccess,
    TResult? Function(MedicineFailure medicineFailure)? loadFailure,
  }) {
    return loadSuccess?.call(medicines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Medicine> medicines)? loadSuccess,
    TResult Function(MedicineFailure medicineFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(medicines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements MedicinesState {
  const factory _LoadSuccess(final List<Medicine> medicines) =
      _$LoadSuccessImpl;

  List<Medicine> get medicines;
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MedicineFailure medicineFailure});

  $MedicineFailureCopyWith<$Res> get medicineFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$MedicinesStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineFailure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == medicineFailure
          ? _value.medicineFailure
          : medicineFailure // ignore: cast_nullable_to_non_nullable
              as MedicineFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicineFailureCopyWith<$Res> get medicineFailure {
    return $MedicineFailureCopyWith<$Res>(_value.medicineFailure, (value) {
      return _then(_value.copyWith(medicineFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.medicineFailure);

  @override
  final MedicineFailure medicineFailure;

  @override
  String toString() {
    return 'MedicinesState.loadFailure(medicineFailure: $medicineFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.medicineFailure, medicineFailure) ||
                other.medicineFailure == medicineFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicineFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Medicine> medicines) loadSuccess,
    required TResult Function(MedicineFailure medicineFailure) loadFailure,
  }) {
    return loadFailure(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Medicine> medicines)? loadSuccess,
    TResult? Function(MedicineFailure medicineFailure)? loadFailure,
  }) {
    return loadFailure?.call(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Medicine> medicines)? loadSuccess,
    TResult Function(MedicineFailure medicineFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(medicineFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements MedicinesState {
  const factory _LoadFailure(final MedicineFailure medicineFailure) =
      _$LoadFailureImpl;

  MedicineFailure get medicineFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
