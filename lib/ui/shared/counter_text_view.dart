import 'package:agenda_boa_test/ui/shared/styles.dart';
import 'package:flutter/material.dart';

class CounterTextView extends StatelessWidget {
  final int count;

  const CounterTextView({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Counter $count',
        style: TextStyle(
          color: kcBlackColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
