import 'package:hive_flutter/hive_flutter.dart';
import 'package:medi_mind/core/constants/hive_box_names.dart';
import 'package:medi_mind/features/auth/data/user_entity.dart';

Future<void> setupHive() async {
  await Hive.initFlutter();

  Hive.registerAdapter(UserEntityAdapter());

  await Hive.openBox(BoxNames.current);
}
