import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/screens/screens.dart';
import 'package:flutter_facebook_ui/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.account_circle_outlined,
    Icons.account_tree_outlined,
    Icons.blender_outlined,
    // MdiIcons.bellOutline,
    Icons.menu,
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: _screens),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: CustomTabBar(
                icons: _icons,
                selectedIndex: _selectedIndex,
                onTap: (index) => setState(() => _selectedIndex = index)),
          ),
        ));
  }
}
