import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ui/utils/extentions.dart';
import 'package:ui/utils/styles.dart';
import 'package:ui/view/home/widgets/banner_widget.dart';
import 'package:ui/view/home/widgets/product_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          height: 06.hp,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 2.hp, horizontal: 3.5.wp),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'What do you want to buy today.',
                suffixIcon: const Icon(Icons.search), // Trailing search icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
            const Gap(15),
            const BannerWidget(),
            const Gap(15),
            StaggeredGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12,
              children: const [
                ProductCardWidget(),
                ProductCardWidget(),
                ProductCardWidget()
              ],
            ),
            const Gap(15),
            const StepperWidget()
          ],
        ),
      ),
    );
  }
}

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 5.hp,
            width: 10.wp,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.grey)),
            child: Icon(
              Icons.arrow_back_ios_sharp,
              size: 2.hp,
            ),
          ),
          const Gap(3),
          ...[1, 2, 3, 4].map((e) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.wp),
                child: Container(
                  height: 5.hp,
                  width: 10.wp,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey)),
                  child: Text(
                    e.toString(),
                    style:
                        Styles.textStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          const Gap(3),
          Container(
            height: 5.hp,
            width: 10.wp,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.grey)),
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.black,
              size: 2.hp,
            ),
          ),
        ],
      ),
    );
  }
}
