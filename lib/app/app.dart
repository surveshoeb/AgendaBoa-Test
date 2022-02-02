// created by Shoeb Surve at 2021/06/19 20:26.
//
// Developer email: shoeb@codedaddy.io
// The code is maintained and managed by Codedaddy Technologies
// Copyright 2020 The Codedaddy developers. All rights reserved.

import 'package:agenda_boa_test/ui/counter_1/counter_1_viewmodel.dart';
import 'package:agenda_boa_test/ui/counter_2/counter_2_viewmodel.dart';
import 'package:agenda_boa_test/ui/counter_3/counter_3_viewmodel.dart';
import 'package:agenda_boa_test/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: HomeView,
      initial: true,
    ),
  ],
  dependencies: [
    LazySingleton(classType: Counter1ViewModel),
    LazySingleton(classType: Counter2ViewModel),
    LazySingleton(classType: Counter3ViewModel),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
