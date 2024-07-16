import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class RootBottomNavigationBarItem {
  final String iconPath;
  final String label;

  RootBottomNavigationBarItem({
    required this.iconPath,
    required this.label,
  });
}

class RootBottomNavigationBar extends StatelessWidget {
  const RootBottomNavigationBar({
    super.key,
    required this.items,
    this.selectedIndex,
    required this.onSelectedIndexChange,
  });

  final List<RootBottomNavigationBarItem> items;
  final int? selectedIndex;
  final ValueChanged<int> onSelectedIndexChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      color: const Color(0xff6C63FF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          items.length,
          (index) {
            final item = items[index];

            return IconButton(
              onPressed: () {
                onSelectedIndexChange(index);
              },
              icon: Column(
                children: [
                  SizedBox.fromSize(
                    size: const Size.square(20),
                    child: Image.asset(
                      item.iconPath,
                      color: selectedIndex == index
                          ? const Color(0xFFFF954B)
                          : null,
                    ),
                  ),
                  const Gap(5),
                  Text(
                    item.label,
                    style: GoogleFonts.workSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
