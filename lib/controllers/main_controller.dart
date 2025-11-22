import 'package:flutter/material.dart';
import '../core/resources/assets_manager.dart';
import '../views/home/view/home_screen.dart';

class MainController {
  static int currentIndex = 0;

  static void changeScreen(int index) {
    currentIndex = index;
  }

  static final List<Widget> screens = [
    Scaffold(body: Center(child: Text('Explore')),),
    HomeScreen(),
    Scaffold(body: Center(child: Text('Favorites')),),
    Scaffold(body: Center(child: Text('Lists')),),
    Scaffold(body: Center(child: Text('Settings')),),
  ];

  static final List<BottomNavigationBarItem> navItems = [
    BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(AssetsManager.explore)),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(AssetsManager.home),
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(AssetsManager.favorite)),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(AssetsManager.list)),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(AssetsManager.settings)),
      label: "",
    ),
  ];
}
