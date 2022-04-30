import 'package:riverpod/riverpod.dart';
import 'package:lhbat/models/meal.dart';
import 'package:http/http.dart' as http;

import 'variables_provider.dart';

final shiftFutureProvider = FutureProvider<Meal>((ref) async {
  final dateTime = ref.watch(pickedDateProvider);
  return await http
      .get(Uri.parse('https://lpqgf7.deta.dev/shift/$dateTime'))
      .then((value) {
    // print("Response body: ${value.body}");
    //print("Response status: ${value.statusCode}");
    return Meal.fromJson(value.body);
  });

  //return Meal(tittle: "sf", shift: DateTime.now());
});

final shiftStateProvider = StateProvider<Meal>((ref) {
  Meal meal = Meal(tittle: "...");
  ref.watch(shiftFutureProvider).whenData((value) => meal = value);
  return meal;
});
