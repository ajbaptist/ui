import 'package:flutter/widgets.dart';
import 'package:ui/utils/extentions.dart';
import 'package:ui/utils/styles.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 3.5.wp,
      runSpacing: 2.hp,
      children: [
        Text(
          'Privacy Center |',
          style: Styles.textStyleGrey,
        ),
        Text(
          'Privacy & Cookie Policy |',
          style: Styles.textStyleGrey,
        ),
        Text(
          'Manage Cookies |',
          style: Styles.textStyleGrey,
        ),
        Text(
          'Terms & Conditions |',
          style: Styles.textStyleGrey,
        ),
        Text(
          'Copywrite Notice |',
          style: Styles.textStyleGrey,
        ),
        Text(
          'Imprint',
          style: Styles.textStyleGrey,
        ),
      ],
    );
  }
}
