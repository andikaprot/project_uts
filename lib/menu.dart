import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoesapp/pages/categoriesPage.dart';
import 'package:shoesapp/pages/homePage.dart';

enum _SelectedTab { home, details, cart, profile }

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _SelectedTab.values.indexOf(_selectedTab),
        children: [
          // const QuotesPage(),
          homePage(),
          categoriesPage(),
          Container(),
          Container(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: Color(0xffF2F2F2),
        backgroundColor: Color(0xffF2F2F2),
        paddingR: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.home
                  ? "images/homeWarna.png"
                  : "images/home.png",
              width: 20,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.details
                  ? "images/detailsWarna.png"
                  : "images/details.png",
              width: 20,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.cart
                  ? "images/cartWarna.png"
                  : "images/cart.png",
              width: 20,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.profile
                  ? "images/profileWarna.png"
                  : "images/profile.png",
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
