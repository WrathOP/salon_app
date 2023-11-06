import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:salon_app/screens/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int currentPageIndex = 0;

  String _title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_title),
        // actions: [
        //   IconButton(
        //     onPressed: _signOut,
        //     icon: const Icon(Icons.logout),
        //   ),
        // ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            switch (index) {
              case 0:
                {
                  _title = 'Home';
                }
                break;
              case 1:
                {
                  _title = 'Categories';
                }
                break;
              case 2:
                {
                  _title = 'Schedule';
                }
                break;
              case 3:
                {
                  _title = 'Chat';
                }
                break;
              case 4:
                {
                  _title = 'Profile';
                }
                break;
            }
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.category_rounded),
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_today_outlined),
            selectedIcon: Icon(Icons.calendar_today_rounded),
            label: 'Schedule',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.chat_bubble_rounded),
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Text',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          )
        ],
      ),
      body: homeScreenBody()[currentPageIndex],
    );
  }
}
