import 'package:flutter/material.dart';
import 'package:meditation_app/views/home/home_screen.dart';
import 'package:meditation_app/views/meditate/meditate_screen.dart';
import 'package:meditation_app/widget/bottom_navbar_button.dart';

class MainTabviewScreen extends StatefulWidget {
  const MainTabviewScreen({super.key});

  @override
  State<MainTabviewScreen> createState() => _MainTabviewScreenState();
}

class _MainTabviewScreenState extends State<MainTabviewScreen>
    with TickerProviderStateMixin {
  TabController? controller;
  int selectedTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectedTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: controller, children: [
        const HomeScreen(),
        Container(
          color: Colors.amber,
        ),
        const MeditateScreen(),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.yellow,
        ),
      ]),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 4, offset: Offset(0, -2)),
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarButton(
                  icon: 'assets/images/navbar/home.png',
                  title: 'Home',
                  isSelected: selectedTab == 0,
                  onPressed: () => changeSelectedTab(0)),
              BottomNavbarButton(
                  icon: 'assets/images/navbar/sleep.png',
                  title: 'Sleep',
                  isSelected: selectedTab == 1,
                  onPressed: () => changeSelectedTab(1)),
              BottomNavbarButton(
                  icon: 'assets/images/navbar/meditate.png',
                  title: 'Meditate',
                  isSelected: selectedTab == 2,
                  onPressed: () => changeSelectedTab(2)),
              BottomNavbarButton(
                  icon: 'assets/images/navbar/music.png',
                  title: 'Music',
                  isSelected: selectedTab == 3,
                  onPressed: () => changeSelectedTab(3)),
              BottomNavbarButton(
                  icon: 'assets/images/navbar/profile.png',
                  title: 'Profile',
                  isSelected: selectedTab == 4,
                  onPressed: () => changeSelectedTab(4)),
            ],
          ),
        ),
      ),
    );
  }

  void changeSelectedTab(int index) {
    selectedTab = index;
    controller?.animateTo(index);
    setState(() {});
  }
}
