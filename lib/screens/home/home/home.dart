import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lhbat/screens/home/home/bottom_wdget.dart';
import 'package:lhbat/screens/home/home/centre_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String current = "ايت احيا اومحند";
    const String assetName = 'assets/images/topimage.jpg';
    final Widget topImage = Image.asset(
      assetName,
      fit: BoxFit.fill,
    );
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Container(
                child: topImage,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.blue,
                  ),
                ),
                const Text(current,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(
                height: 360,
                width: MediaQuery.of(context).size.width,
                child: const CentreList()),
            const BottomWidget(
              telmsour: current,
            ),
          ],
        ),
      ),
    );
  }
}
