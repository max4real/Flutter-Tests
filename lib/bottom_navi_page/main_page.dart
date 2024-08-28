import 'package:flutter_test_one/bottom_navi_page/history_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_one/bottom_navi_page/home_page.dart';
import 'package:flutter_test_one/bottom_navi_page/noti_page.dart';
import 'package:flutter_test_one/bottom_navi_page/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor:
      //       const Color.fromARGB(255, 85, 94, 228).withOpacity(0.5),
      //   title: const Text("Main Page"),
      // ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: shownePage(),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 85, 94, 228).withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.only(
              bottom: (MediaQuery.of(context).viewPadding.bottom),
              top: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 0;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.home_filled,
                        color: (index == 0) ? Colors.greenAccent : Colors.white,
                      )),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 1;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.history,
                        color: (index == 1) ? Colors.greenAccent : Colors.white,
                      )),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 2;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.notifications,
                        color: (index == 2) ? Colors.greenAccent : Colors.white,
                      )),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 3;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.bar_chart_rounded,
                        color: (index == 3) ? Colors.greenAccent : Colors.white,
                      )),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 4;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.person,
                        color: (index == 4) ? Colors.greenAccent : Colors.white,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget shownePage() {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const HistoryPage();
      case 2:
        return const NotiPage();
      case 3:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }
}
