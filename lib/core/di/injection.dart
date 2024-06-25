import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:medi_mind/core/di/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();
