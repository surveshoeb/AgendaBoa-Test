import 'package:agenda_boa_test/ui/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'increment_button_viewmodel.dart';

class IncrementButtonView extends StatelessWidget {
  final int index, currentCount;
  final void Function() onPressed;

  const IncrementButtonView({
    Key? key,
    required this.index,
    required this.currentCount,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<IncrementButtonViewModel>.reactive(
      builder: (context, model, child) {
        return FloatingActionButton.extended(
          onPressed: () {
            model.increaseCounter(
              index,
              currentCount,
            );
            onPressed();
          },
          label: Text('Increment me!'),
          backgroundColor: kcApp1Color,
        );
      },
      viewModelBuilder: () => IncrementButtonViewModel(),
    );
  }
}
