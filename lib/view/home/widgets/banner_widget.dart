import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ui/utils/extentions.dart';
import 'package:ui/utils/styles.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 2.hp, horizontal: 3.5.wp),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Styles.containerPrimary,
            Styles.containerLite
          ], // Gradient colors
        ),
        borderRadius: BorderRadius.circular(12.0), // Circular border radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Title Text',
              style: Styles.textStyleWhite.copyWith(fontSize: 16.spMin)),
          const Gap(10.0),
          Text(
              'Splash sale in begin in april. Get upto 80% Discount all products Read More.',
              style: Styles.textStyleWhite),
        ],
      ),
    );
  }
}
