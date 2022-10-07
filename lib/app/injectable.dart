import 'package:best_practice_template/app/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String? env) async =>
    $initGetIt(getIt, environment: env ?? '');
