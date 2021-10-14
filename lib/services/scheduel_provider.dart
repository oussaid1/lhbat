import 'package:lhbat/models/meal.dart';
import 'package:http/http.dart' as http;

Future<Meal> getMealShift(DateTime dateTime) async {
  return await http
      .get(Uri.parse('https://lpqgf7.deta.dev/shift/$dateTime'))
      .then((value) {
    // print("Response body: ${value.body}");
    //print("Response status: ${value.statusCode}");
    return Meal.fromJson(value.body);
  });
}
