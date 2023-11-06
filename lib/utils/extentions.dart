import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PercentSized on num {
  double get hp => ((this / 100)).sh;
  double get wp => ((this / 100)).sw;
}
