import 'package:lhbat/components.dart';
import 'package:lhbat/settings/theme/typography.dart';

class CentreList extends StatelessWidget {
  const CentreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Card(
            elevation: 0,
            color: MTypography.secondaryColor,
            child: const ListTile(
              title: Text("data"),
              focusColor: Colors.blue,
            ),
          ),
        );
      },
    );
  }
}
