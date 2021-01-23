import 'package:get_it/get_it.dart';
import 'package:web_flutter/services/navigation_services.dart';

GetIt locator = GetIt.instance;
 void setupLocator(){
  locator.registerLazySingleton(() => NavigationServices());
 }