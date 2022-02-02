import 'package:agenda_boa_test/app/app_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class Counter1ViewModel extends BaseViewModel {
  int _currentCount = 0;
  int get currentCount => _currentCount;

  startupLogic() async {
    FirebaseFirestore.instance
        .collection(COUNTERS_COLLECTION)
        .doc('counter_1')
        .snapshots()
        .listen((event) {
      if (event.exists) {
        _currentCount = (event.data() as Map<String, dynamic>)['count'];
        notifyListeners();
      }
    });
  }

  increaseCount() {
    _currentCount++;
  }
}
