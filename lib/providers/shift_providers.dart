import 'package:lhbat/services/scheduel_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:lhbat/models/meal.dart';
import 'package:http/http.dart' as http;

import 'variables_provider.dart';

final shiftProvider = FutureProvider<Meal>((ref) async {
  final dateTime = ref.watch(pickedDateProvider);
  return getMealShift(dateTime);

  //return Meal(tittle: "sf", shift: DateTime.now());
});
