import 'package:flutter/material.dart';
import 'package:money_management_frontend/view/allocatio_screen.dart';
import 'package:money_management_frontend/view/exspenses_screen.dart';
import 'package:money_management_frontend/view/home_screen.dart';
import 'package:money_management_frontend/view/planning_screen.dart';
import 'package:money_management_frontend/view/profile_screen.dart';

class CustomButtomNav extends StatefulWidget {
  const CustomButtomNav({super.key});

  @override
  State<CustomButtomNav> createState() => _CustomButtomNavState();
}

class _CustomButtomNavState extends State<CustomButtomNav> {
  int selectedIndex = 0;
  List<Widget> screen = [
    HomeScreen(),
    AllocatioScreen(),
    ExspensesScreen(),
    PlanningScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screen[selectedIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 25,
                spreadRadius: 0,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,

              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },

              type: BottomNavigationBarType.fixed,

              backgroundColor: Colors.white,

              selectedItemColor: const Color(0xFF3F6B4F),
              unselectedItemColor: const Color(0xFF9AA39D),

              selectedFontSize: 11,
              unselectedFontSize: 10,

              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),

              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
              ),

              elevation: 0,

              showUnselectedLabels: true,

              iconSize: 24,

              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.home_outlined, size: 24),
                  ),
                  activeIcon: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3EEE6),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(Icons.home_rounded, size: 22),
                  ),
                  label: "Home",
                ),

                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 24,
                    ),
                  ),
                  activeIcon: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3EEE6),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.account_balance_wallet_rounded,
                      size: 22,
                    ),
                  ),
                  label: "Allocation",
                ),

                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.attach_money_outlined, size: 24),
                  ),
                  activeIcon: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3EEE6),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(Icons.attach_money_rounded, size: 22),
                  ),
                  label: "Expenses",
                ),

                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.event_note_outlined, size: 24),
                  ),
                  activeIcon: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3EEE6),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(Icons.event_note_rounded, size: 22),
                  ),
                  label: "Planning",
                ),

                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.person_outline, size: 24),
                  ),
                  activeIcon: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3EEE6),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(Icons.person_rounded, size: 22),
                  ),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
