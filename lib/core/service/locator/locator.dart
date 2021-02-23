import 'package:flutter_boilerplate/core/service/navigator/navigation_service.dart';
import 'package:flutter_boilerplate/core/viewmodel/startup_viewmodel.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => StartupViewModel());
}
