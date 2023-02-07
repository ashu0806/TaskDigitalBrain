import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewer extends StatelessWidget {
  const PageViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/notes.png',
              width: 200.w,
              height: 200.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "This application allows you to pay\nbills in one place",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
