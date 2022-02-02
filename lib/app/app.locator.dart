// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/counter_1/counter_1_viewmodel.dart';
import '../ui/counter_2/counter_2_viewmodel.dart';
import '../ui/counter_3/counter_3_viewmodel.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => Counter1ViewModel());
  locator.registerLazySingleton(() => Counter2ViewModel());
  locator.registerLazySingleton(() => Counter3ViewModel());
}
