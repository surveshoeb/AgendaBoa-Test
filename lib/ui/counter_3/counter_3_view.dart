import 'package:agenda_boa_test/app/app.locator.dart';
import 'package:agenda_boa_test/ui/shared/counter_text_view.dart';
import 'package:agenda_boa_test/ui/shared/increment_button/increment_button_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'counter_3_viewmodel.dart';

class Counter3View extends StatelessWidget {
  const Counter3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Counter3ViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: CounterTextView(count: model.currentCount),
          floatingActionButton: IncrementButtonView(
            index: 3,
            onPressed: () => model.increaseCount(),
            currentCount: model.currentCount,
          ),
        );
      },
      viewModelBuilder: () => locator<Counter3ViewModel>(),
      fireOnModelReadyOnce: true,
      disposeViewModel: false,
      onModelReady: (model) => model.startupLogic(),
    );
  }
}
