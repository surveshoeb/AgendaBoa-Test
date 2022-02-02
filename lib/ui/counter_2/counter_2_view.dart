import 'package:agenda_boa_test/app/app.locator.dart';
import 'package:agenda_boa_test/ui/shared/counter_text_view.dart';
import 'package:agenda_boa_test/ui/shared/increment_button/increment_button_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'counter_2_viewmodel.dart';

class Counter2View extends StatelessWidget {
  const Counter2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Counter2ViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: CounterTextView(count: model.currentCount),
          floatingActionButton: IncrementButtonView(
            index: 2,
            onPressed: () => model.increaseCount(),
            currentCount: model.currentCount,
          ),
        );
      },
      viewModelBuilder: () => locator<Counter2ViewModel>(),
      fireOnModelReadyOnce: true,
      disposeViewModel: false,
      onModelReady: (model) => model.startupLogic(),
    );
  }
}
