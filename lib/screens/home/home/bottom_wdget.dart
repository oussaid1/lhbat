import 'package:lhbat/components.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key, required this.telmsour}) : super(key: key);
  final String telmsour;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Text(
              "تلمصور ",
              textAlign: TextAlign.start,
              style: MTypography.headlineTextStyle
                  .copyWith(color: MTypography.primaryColor),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Card(
              color: MTypography.primaryColor,
              child: Center(
                  child: Text(
                telmsour,
                style: MTypography.headlineTextStyle,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
