import 'package:digital_brain_task/dashboard/add/add_page.dart';
import 'package:digital_brain_task/dashboard/cards/card_page.dart';
import 'package:digital_brain_task/dashboard/history/history_page.dart';
import 'package:digital_brain_task/dashboard/home/home_page.dart';
import 'package:digital_brain_task/dashboard/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const AddPage(),
    const CardPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 23.sp,
          selectedItemColor: const Color(0xff4338CA),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.feed,
                color:
                    selectedIndex == 0 ? const Color(0xff4338CA) : Colors.grey,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history_sharp,
                color:
                    selectedIndex == 1 ? const Color(0xff4338CA) : Colors.grey,
              ),
              label: "History",
            ),
            const BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Color(0xff4338CA),
                child: Icon(
                  Icons.file_copy_rounded,
                  color: Colors.white,
                ),
              ),
              label: "Add",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
                color:
                    selectedIndex == 3 ? const Color(0xff4338CA) : Colors.grey,
              ),
              label: "Card",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color:
                    selectedIndex == 4 ? const Color(0xff4338CA) : Colors.grey,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({
    Key? key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2({
    Key? key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final primaryColor = const Color(0xff4338CA);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: primaryColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
