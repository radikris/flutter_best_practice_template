// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:best_practice_template/app/app.dart';
import 'package:best_practice_template/app/injectable.dart';
import 'package:best_practice_template/app/network/api.dart';
import 'package:best_practice_template/bootstrap.dart';
import 'package:injectable/injectable.dart';

void main() async {
  await configureDependencies(Environment.prod);
  await bootstrap(() => const App());
}
