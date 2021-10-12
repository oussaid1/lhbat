import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lhbat/routing/routes.dart';
import 'package:lhbat/screens/home/home/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/svgs/logo.svg';
    final Widget topImage =
        SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Container(
                  child: topImage,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
