import 'package:flutter/material.dart';
import 'package:promilo/core/constants/bottom_nav_widget_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/features/home/presentation/page/description_page.dart';

class DemoBottomNaviWidet extends StatefulWidget {
  const DemoBottomNaviWidet({super.key});
  static const routePath = '/DemobottomNav';

  @override
  State<DemoBottomNaviWidet> createState() => _BottomNaviWidetState();
}

class _BottomNaviWidetState extends State<DemoBottomNaviWidet> {
  int selectedIndex = 2;
  final PageController controller = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: controller,
        onPageChanged: (index) {},
        children: const [
          // Scaffold(),
          // Scaffold(),
          DescriptionPage(),
          // Scaffold(),
          // Scaffold(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 0,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: AppTheme.of(context).colors.secondary,
          unselectedItemColor: AppTheme.of(context).colors.text,
          currentIndex: selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          // onTap: (index) {
          //   setState(() {
          //     selectedIndex = index;
          //     controller.jumpToPage(index);
          //   });
          // },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: BottomNavWidgetConstants.txtHome,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.window),
              label: BottomNavWidgetConstants.txtProlet,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined),
              label: BottomNavWidgetConstants.txtMeetUp,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_open_outlined),
              label: BottomNavWidgetConstants.txtExplore,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: BottomNavWidgetConstants.txtAccount,
            ),
          ],
        ),
      ),
    );
  }
}
