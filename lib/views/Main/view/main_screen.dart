import 'package:flutter/material.dart';
import '../../../controllers/main_controller.dart';
import '../widgets/custom_bottom_navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainController.screens[MainController.currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (value) => setState(() {
          MainController.changeScreen(value);
        }),
      ),
    );
  }
}
