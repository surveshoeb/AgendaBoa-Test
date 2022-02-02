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
