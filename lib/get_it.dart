import 'package:get_it/get_it.dart';

import 'repository/repo.dart';
import 'services/repoimpl.dart';

GetIt locator = GetIt.I;

initLocator() {
  locator.registerLazySingleton<Repository>(() => RepositoryImpl());
}