import 'package:digital_brain_task/auth/page_viewer.dart';
import 'package:digital_brain_task/auth/widgets/log_in_method_widget.dart';
import 'package:digital_brain_task/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final PageController _pageViewController = PageController(initialPage: 0);
  int _activePage = 0;

  final List<Widget> pages = [
    const PageViewer(),
    const PageViewer(),
  ];
  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 1.sh,
          width: 1.sw,
          color: Colors.blue,
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Taupex",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 300.h,
                width: 1.sw,
                color: Colors.blue,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _pageViewController,
                      onPageChanged: (int index) {
                        setState(() {
                          _activePage = index;
                        });
                      },
                      itemCount: pages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return pages[index];
                      },
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                          pages.length,
                          (index) => Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 3.w,
                            ),
                            child: InkWell(
                              onTap: () {
                                _pageViewController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              },
                              child: Container(
                                height: 3.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  color: _activePage == index
                                      ? Colors.white
                                      : Colors.grey[500],
                                  borderRadius: BorderRadius.circular(
                                    8.r,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              const LogInMethodWidget(
                icon: Icons.facebook,
                methodName: "Facebook",
                bgColor: Color.fromARGB(255, 3, 91, 162),
              ),
              SizedBox(
                height: 10.h,
              ),
              const LogInMethodWidget(
                icon: Icons.g_mobiledata,
                methodName: "Google",
                bgColor: Colors.red,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DashboardPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 35.h,
                    width: 1.sw,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                          Icons.email,
                          color: Colors.blue,
                          size: 20.sp,
                        ),
                        const Spacer(),
                        Text(
                          "E-mail",
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: 15.sp,
                                    color: Colors.blue,
                                  ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              const Text(
                "By tapping into account you are agreeing with the\n Terms & Conditions and Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 214, 214, 214),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
