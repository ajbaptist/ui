import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui/utils/styles.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
          child: Text.rich(
        TextSpan(
            text: 'By clicking the SUBSCRIBE button, you are agreeing to our ',
            style: Styles.textStyle.copyWith(color: Colors.grey),
            children: <TextSpan>[
              TextSpan(
                  text: '\nPrivacy & Cookie Policy',
                  style: Styles.textStyleWhite.copyWith(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // code to open / launch terms of service link here
                    }),
            ]),
        textAlign: TextAlign.center,
      )),
    );
  }
}
