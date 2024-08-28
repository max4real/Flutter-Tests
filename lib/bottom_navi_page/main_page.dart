import 'package:flutter/material.dart';
import 'package:flutter_test_one/bottom_navi_page/history_page.dart';
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
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 85, 94, 228).withOpacity(0.5),
        title: const Text("Main Page"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              child: shonePage(),
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
                    child: TextButton(
                  onPressed: () {
                    index = 0;
                    setState(() {});
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: (index == 0)
                            ? const Color.fromARGB(255, 58, 59, 153)
                            : Colors.black),
                  ),
                )),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      index = 1;
                      setState(() {});
                    },
                    child: Text("History",
                        style: TextStyle(
                            color: (index == 1)
                                ? const Color.fromARGB(255, 58, 59, 153)
                                : Colors.black)),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      index = 2;
                      setState(() {});
                    },
                    child: Text("Noti",
                        style: TextStyle(
                            color: (index == 2)
                                ? const Color.fromARGB(255, 58, 59, 153)
                                : Colors.black)),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      index = 3;
                      setState(() {});
                    },
                    child: Text("Profile",
                        style: TextStyle(
                            color: (index == 3)
                                ? const Color.fromARGB(255, 58, 59, 153)
                                : Colors.black)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget shonePage() {
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
