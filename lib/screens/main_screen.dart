import 'package:flutter/material.dart';
import 'package:foodappclone/screens/cart_screen.dart';
import 'package:foodappclone/screens/homepage_screen.dart';
import 'package:foodappclone/screens/profile_screen.dart';
import 'package:foodappclone/screens/search_screen.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SearchScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Iconsax.home, Iconsax.home, 'Home', 0),
            _buildNavItem(
                Iconsax.search_normal, Iconsax.search_normal, 'Search', 1),
            _buildNavItem(
                Iconsax.shopping_bag, Iconsax.shopping_bag, 'Cart', 2),
            _buildNavItem(Iconsax.user, Iconsax.user, 'Profile', 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
      IconData icon, IconData activeIcon, String label, int index) {
    final isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isSelected ? activeIcon : icon,
            color: isSelected
                ? const Color.fromRGBO(70, 43, 156, 1)
                : Colors.grey[600],
            size: 28,
          ),
          const Gap(8),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            switchInCurve: Curves.bounceIn,
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
            child: isSelected
                ? Text(
                    label,
                    key: ValueKey(label),
                    style: const TextStyle(
                        color: Color.fromRGBO(70, 43, 156, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Poppins'),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
