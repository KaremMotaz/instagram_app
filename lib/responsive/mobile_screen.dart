import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/contants/colors.dart';
import 'package:instagram_app/screens/add_post_screen.dart';
import 'package:instagram_app/screens/favorite_screen.dart';
import 'package:instagram_app/screens/home_screen.dart';
import 'package:instagram_app/screens/profile_screen.dart';
import 'package:instagram_app/screens/search_screen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final PageController _pageController = PageController();
  int selectedIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      bottomNavigationBar: CupertinoTabBar(
        activeColor: primaryColor,
        currentIndex: selectedIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_rounded,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: PageView(
          onPageChanged: (value) {},
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            SearchScreen(),
            AddPostScreen(),
            FavoriteScreen(),
            ProfileScreen()
          ]),
    );
  }
}
