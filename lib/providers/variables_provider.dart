import 'dart:async';

import 'package:riverpod/riverpod.dart';

final pickedDateProvider = StateNotifierProvider<PickedDate, DateTime>((ref) {
  return PickedDate();
});

class PickedDate extends StateNotifier<DateTime> {
  PickedDate() : super(DateTime.now());

  void increment() => state = state.add(const Duration(days: 1));
  void decrement() => state = state.subtract(const Duration(days: 1));
}

// class Clock extends StateNotifier<DateTime> {
//   // 1. initialize with current time
//   Clock() : super(DateTime.now()) {
//     // 2. create a timer that fires every second
//     _timer = Timer.periodic(const Duration(hours: 1), (_) {
//       // 3. update the state with the current time
//       state = DateTime.now();
//     });
//   }
//   late final Timer _timer;

//   // 4. cancel the timer when finished
//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//   }
// }

final counterProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter(0);
});

class Counter extends StateNotifier<int> {
  Counter(int state) : super(0);
  void increment() => state++;
  void decrement() => state--;
}
