import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

int currentIndex = 0;

final List<Widget> screens = [];

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('MyApp'),
        backgroundColor: CupertinoColors.activeGreen,
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          activeColor: CupertinoColors.activeGreen,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.rectangle_on_rectangle_angled,
                ),
                label: 'Events'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: 'Likes'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile'),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return screens[index];
            },
          );
        },
      ),
    );
  }
}
