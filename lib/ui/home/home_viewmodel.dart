import 'package:agenda_boa_test/app/app_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int maxCounter = 3;

  int _currentIndex = 1;
  int get currentIndex => _currentIndex;

  updateCurrentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  resetCounter() {
    for (var i = 1; i <= maxCounter; i++) {
      FirebaseFirestore.instance
          .collection(COUNTERS_COLLECTION)
          .doc('counter_$i')
          .set({'count': 0});
    }
  }
}
