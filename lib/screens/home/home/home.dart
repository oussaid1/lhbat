import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lhbat/components.dart';
import 'package:lhbat/models/meal.dart';
import 'package:lhbat/providers/shift_providers.dart';
import 'package:lhbat/providers/variables_provider.dart';
import 'package:lhbat/screens/home/home/bottom_wdget.dart';
import 'package:lhbat/screens/home/home/centre_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final DateFormat formatter = DateFormat('H:m:s yyyy-MM-dd ');
    final x = watch(pickedDateProvider);
    final current = formatter.format(watch(pickedDateProvider));
    final AsyncValue<Meal> shift = watch(shiftProvider);
    const String assetName = 'assets/images/topimage.jpg';
    final currentTime = watch(counterProvider);
    // format the time as `hh:mm:ss`

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Container(
                child: Center(
                  child: Text(current.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22)),
                ),
                decoration: const BoxDecoration(
                  color: Color(0xff7c94b6),
                  image: DecorationImage(
                    image: AssetImage(assetName),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read(pickedDateProvider.notifier).decrement();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.blue,
                    ),
                  ),
                  shift.when(
                      data: (value) => Text(value.tittle.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                      loading: () => const Text("------"),
                      error: (e, r) => const Text("------")),
                  IconButton(
                    onPressed: () {
                      context.read(pickedDateProvider.notifier).increment();
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 360,
                width: MediaQuery.of(context).size.width,
                child: const CentreList()),
            BottomWidget(
              telmsour: current,
            ),
          ],
        ),
      ),
    );
  }
}
