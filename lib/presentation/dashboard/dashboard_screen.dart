
import 'package:flutter/material.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/presentation/dashboard/cart_screen.dart';
import 'package:shopywell/presentation/dashboard/home_screen.dart';
import 'package:shopywell/presentation/dashboard/search_screen.dart';
import 'package:shopywell/presentation/dashboard/settings_screen.dart';
import 'package:shopywell/presentation/dashboard/wishlist_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.animateToPage(
      index, duration: Duration(milliseconds: 200), curve: Curves.linear,
     
    );
  }

  List<Widget> pages = [
    HomeScreen(),
    WishlistScreen(),
    CartScreen(),
    SearchScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: SizedBox(
        width: context.getSize.width,
        height: context.getSize.height,
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          allowImplicitScrolling: false,
         
          itemCount: pages.length,
          itemBuilder: (context, index) => pages[index],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 60, // Diameter = 2 * radius (30)
              height: 60, // Diameter = 2 * radius (30)
              decoration: BoxDecoration(
                color: selectedIndex == 2 ? Colors.red : Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 24,
                color: selectedIndex == 2 ? Colors.white : Colors.black,
              ),
            ),

            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red, // Home icon color
        unselectedItemColor: Colors.black,
        onTap: (value) {
          onPageChanged(value);
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
