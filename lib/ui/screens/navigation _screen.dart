import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'chat_page.dart';
import 'home_screen.dart';
import 'profile_page.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedindex = 0;
  final pages = [
    const HomePage(),
    const ChatPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              label: 'Home',
              backgroundColor: AppColor.groundColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 25,
              ),
              label: 'Chat',
              backgroundColor: AppColor.groundColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_circle_outlined,
                size: 25,
              ),
              label: 'Profile',
              backgroundColor: AppColor.groundColor)
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedindex,
        selectedItemColor: AppColor.appMainColor,
        unselectedItemColor: AppColor.headingColor,
        elevation: 6,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
      ),
    );
  }
}
