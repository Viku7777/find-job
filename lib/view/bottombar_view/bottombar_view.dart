import 'package:find_jobs/view/bookmark_view/bookmark_view.dart';
import 'package:find_jobs/view/home_view/home_view.dart';
import 'package:find_jobs/view/notification_view.dart';
import 'package:find_jobs/view/search_view/search_view.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarview extends StatefulWidget {
  const BottomNavigationBarview({super.key});

  @override
  State<BottomNavigationBarview> createState() =>
      _BottomNavigationBarviewState();
}

class _BottomNavigationBarviewState extends State<BottomNavigationBarview> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: select,
            onTap: (value) {
              select = value;
              setState(() {});
            },
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white24,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark), label: "Bookmark"),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.stacked_line_chart_outlined),
              //     label: "Status"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: "Notifications"),
            ]),
        body: const [
          HomeView(),
          BookmarkView(),
          // StatusView(),
          NotificationView(),
        ][select]);
  }
}
