import 'package:base_/services/api_services.dart';
import 'package:base_/services/navigation_service.dart';
import 'package:base_/viewModels/home_viewModel.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setUpLocator() {
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerFactory(() => HomeViewModel());
  getIt.registerFactory(() => ApiServices());
}
