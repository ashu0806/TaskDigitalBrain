import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4338CA),
          toolbarHeight: 200.h,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15.w,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20.r,
                    ),
                    SizedBox(
                      width: 60.w,
                    ),
                    Text(
                      "Ready to pay bills?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      width: 70.w,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // body: Stack(
        //   clipBehavior: Clip.none,

        //   children: [
        //     Container(
        //       height: 250.h,
        //       width: 1.sw,
        //       decoration: BoxDecoration(
        //         color: const Color(0xff4338CA),
        //         borderRadius: BorderRadius.only(
        //           bottomLeft: Radius.circular(
        //             70.r,
        //           ),
        //           bottomRight: Radius.circular(
        //             60.r,
        //           ),
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       top: 15.h,
        //       child: Row(
        //         children: [
        //           SizedBox(
        //             width: 15.w,
        //           ),
        //           CircleAvatar(
        //             backgroundColor: Colors.red,
        //             radius: 20.r,
        //           ),
        //           SizedBox(
        //             width: 60.w,
        //           ),
        //           Text(
        //             "Ready to pay bills?",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 15.sp,
        //             ),
        //           ),
        //           SizedBox(
        //             width: 70.w,
        //           ),
        //           IconButton(
        //             onPressed: () {},
        //             icon: Icon(
        //               Icons.search,
        //               color: Colors.white,
        //               size: 20.sp,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Positioned(
        //       top: 70.h,
        //       left: 70.w,
        //       child: Text(
        //         "You have 12 unpaid bills this month",
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 14.sp,
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       top: 100.h,
        //       left: 0,
        //       right: 0,
        //       child: Center(
        //         child: Container(
        //           height: 30.h,
        //           width: 150.w,
        //           alignment: Alignment.center,
        //           decoration: BoxDecoration(
        //             color: Colors.blue,
        //             borderRadius: BorderRadius.circular(
        //               25.r,
        //             ),
        //           ),
        //           child: Text(
        //             "Pay all bills at once",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 13.sp,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       top: 150.h,
        //       left: 20.w,
        //       right: 20.w,
        //       child: Container(
        //         height: 150.h,
        //         width: 1.sw,
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(
        //             10.r,
        //           ),
        //           boxShadow: const [
        //             BoxShadow(
        //               color: Color.fromARGB(255, 224, 224, 224),
        //               blurRadius: 5,
        //               spreadRadius: 2,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       top: 320.h,
        //       left: 20.w,
        //       right: 20.w,
        //       child: Container(
        //         height: 1.sh,
        //         width: 1.sw,
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(
        //             10.r,
        //           ),
        //           boxShadow: const [
        //             BoxShadow(
        //               color: Color.fromARGB(255, 224, 224, 224),
        //               blurRadius: 5,
        //               spreadRadius: 2,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
