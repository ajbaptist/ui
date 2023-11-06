import 'package:flutter/material.dart';
import 'package:ui/utils/extentions.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ...[
          1,
          2,
        ].map((e) => Padding(
              padding: EdgeInsets.only(right: 0.4.wp),
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.android_rounded,
                  color: Colors.white,
                ),
              ),
            )),
        const Spacer(),
        ...[
          1,
          2,
        ].map((e) => Padding(
              padding: EdgeInsets.only(right: 0.4.wp),
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.invert_colors_on_sharp,
                  color: Colors.white,
                ),
              ),
            )),
      ],
    );
  }
}
