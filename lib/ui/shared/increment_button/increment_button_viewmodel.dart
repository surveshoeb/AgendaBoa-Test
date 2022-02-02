import 'package:agenda_boa_test/app/app_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class IncrementButtonViewModel extends BaseViewModel {
  increaseCounter(int index, int currentCount) async {
    await FirebaseFirestore.instance
        .collection(COUNTERS_COLLECTION)
        .doc('counter_$index')
        .set({'count': ++currentCount});
  }
}
