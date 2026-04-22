import 'package:flutter/material.dart';
import 'package:opennutritracker/core/presentation/widgets/add_item_bottom_sheet.dart';
import 'package:opennutritracker/features/diary/diary_page.dart';
import 'package:opennutritracker/core/presentation/widgets/home_appbar.dart';
import 'package:opennutritracker/features/home/home_page.dart';
import 'package:opennutritracker/core/presentation/widgets/main_appbar.dart';
import 'package:opennutritracker/features/profile/profile_page.dart';
import 'package:opennutritracker/generated/l10n.dart';
import 'package:opennutritracker/features/settings/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPageIndex = 0;

  late List<Widget> _bodyPages;
  late List<PreferredSizeWidget> _appbarPages;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bodyPages = [
      const HomePage(),        // 0
      const DiaryPage(),       // 1
      const ProfilePage(),     // 2
      const SettingsScreen(),  // 3
    ];

    _appbarPages = [
      const HomeAppbar(), // 0
      MainAppbar(
        title: S.of(context).diaryLabel,
        iconData: Icons.book,
      ),
      MainAppbar(
        title: S.of(context).profileLabel,
        iconData: Icons.account_circle,
      ),
      MainAppbar(
        title: S.of(context).settingsLabel,
        iconData: Icons.settings,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: _appbarPages[_selectedPageIndex],

      body: Stack(
        children: [
          _bodyPages[_selectedPageIndex],

          if (_selectedPageIndex == 0)
            Positioned(
              bottom: 120,
              left: 0,
              right: 0,
              child: Center(
                child: FloatingActionButton(
                  onPressed: () => _onFabPressed(context),
                  backgroundColor: const Color(0xFF4CAF7F),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(Icons.add, size: 35, color: Colors.white),
                ),
              ),
            ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: const Color(0xFF7AD6A1),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 30,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFooterButton(Icons.home, 0),
              _buildFooterButton(Icons.book, 1),
              _buildFooterButton(Icons.person, 2),
              _buildFooterButton(Icons.settings, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooterButton(IconData icon, int index, {bool isCenter = false}) {
    final bool isSelected = _selectedPageIndex == index;
    final double size = isCenter ? 65 : 54;

    return GestureDetector(
      onTap: () => _setPage(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.white : const Color(0xFF4F8D62),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: const Offset(0, 3),
              blurRadius: 8,
            ),
          ],
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.black : Colors.white,
          size: isCenter ? 30 : 25,
        ),
      ),
    );
  }

  void _setPage(int selectedIndex) {
    setState(() {
      _selectedPageIndex = selectedIndex;
    });
  }

  void _onFabPressed(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return AddItemBottomSheet(day: DateTime.now());
      },
    );
  }
}
