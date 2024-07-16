import 'package:hive_flutter/hive_flutter.dart';
import 'package:medi_mind/features/auth/domain/auth_value_objects.dart';
import 'package:medi_mind/features/auth/domain/user.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';

part 'user_entity.g.dart';

@HiveType(typeId: 0)
class UserEntity extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String name;
  @HiveField(4)
  final String surname;

  UserEntity(
    this.id,
    this.userId,
    this.email,
    this.name,
    this.surname,
  );

  User toDomain() {
    return User(
      id: id,
      userId: userId,
      email: Email(email),
      name: NotEmptyString(name),
      surname: NotEmptyString(surname),
    );
  }

  factory UserEntity.fromDomain(User user) {
    return UserEntity(
      user.id,
      user.userId,
      user.email.getValue(),
      user.name.getValue(),
      user.surname.getValue(),
    );
  }
}
