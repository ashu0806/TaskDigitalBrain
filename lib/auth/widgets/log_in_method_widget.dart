import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInMethodWidget extends StatelessWidget {
  const LogInMethodWidget({
    Key? key,
    required this.icon,
    required this.methodName,
    required this.bgColor,
  }) : super(key: key);
  final IconData icon;
  final String methodName;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
      ),
      child: Container(
        height: 35.h,
        width: 1.sw,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(
            20.r,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 15.w,
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 25.sp,
            ),
            const Spacer(),
            Text(
              methodName,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 15.sp,
                    color: Colors.white,
                  ),
            ),
            const Spacer(),
            SizedBox(
              width: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}
