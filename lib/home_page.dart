import 'package:cupertino_app/search_page.dart';
import 'package:cupertino_app/settings_page.dart';
import 'package:flutter/cupertino.dart';

import 'feeds_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'Feeds'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings'
          )
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const FeedsPage();
          case 1:
            return const SearchPage();
          case 2:
            return const SettingsPage();
          default:
            return const Center(
              child: Text('Page not found!'),
            );
        }
      },
    );
  }
}
