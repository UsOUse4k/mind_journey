import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';

part 'medicine.freezed.dart';

enum MedicineReleaseForm {
  pill,
  inhaler,
  drop,
  powder,
  injection,
  another;

  String present() => switch (this) {
        MedicineReleaseForm.pill => "Таблетка",
        MedicineReleaseForm.inhaler => "Ингалятор",
        MedicineReleaseForm.drop => "Капли",
        MedicineReleaseForm.powder => "Порошок",
        MedicineReleaseForm.injection => "Инъекция",
        _ => "Другой",
      };

  static MedicineReleaseForm fromString(String form) {
    switch (form) {
      case 'pill':
        return MedicineReleaseForm.pill;
      case 'inhaler':
        return MedicineReleaseForm.inhaler;
      case 'drop':
        return MedicineReleaseForm.drop;
      case 'powder':
        return MedicineReleaseForm.powder;
      case 'injection':
        return MedicineReleaseForm.injection;
      default:
        return MedicineReleaseForm.another;
    }
  }
}

@freezed
class Medicine with _$Medicine {
  const Medicine._();

  const factory Medicine({
    required String id,
    required NotEmptyString name,
    required MedicineReleaseForm releaseForm,
    required DateTime time,
    required int dose,
    required bool isConsumed,
  }) = _Medicine;

  factory Medicine.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;

    return Medicine(
      id: doc.id,
      name: NotEmptyString(data["name"] as String),
      releaseForm:
          MedicineReleaseForm.fromString(data["release-form"] as String),
      time: (data["time"] as Timestamp).toDate(),
      dose: data["dose"] as int,
      isConsumed: data["consumed"] as bool,
    );
  }

  String get formattedTime => DateFormat('HH.mm').format(time);
}
