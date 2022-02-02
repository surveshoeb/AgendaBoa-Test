import 'package:agenda_boa_test/app/app.locator.dart';
import 'package:agenda_boa_test/ui/shared/counter_text_view.dart';
import 'package:agenda_boa_test/ui/shared/increment_button/increment_button_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'counter_1_viewmodel.dart';

class Counter1View extends StatelessWidget {
  const Counter1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Counter1ViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: CounterTextView(count: model.currentCount),
          floatingActionButton: IncrementButtonView(
            index: 1,
            currentCount: model.currentCount,
            onPressed: () => model.increaseCount(),
          ),
        );
      },
      viewModelBuilder: () => locator<Counter1ViewModel>(),
      fireOnModelReadyOnce: true,
      disposeViewModel: false,
      onModelReady: (model) => model.startupLogic(),
    );
  }
}
