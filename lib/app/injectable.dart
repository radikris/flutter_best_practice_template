import 'package:best_practice_template/app/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
GetIt configureDependencies() => $initGetIt(getIt);
