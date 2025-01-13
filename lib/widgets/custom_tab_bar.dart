import 'package:ostella/constants/app_colors.dart';
import 'package:ostella/core/barrel_file.dart';
import 'package:ostella/screens/home_screen.dart';

class CustomTabBar extends StatelessWidget {
  final List<TabItem> tabs;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Row(
        children: tabs.asMap().entries.map((entry) {
          final int idx = entry.key;
          final TabItem tab = entry.value;
          final bool isSelected = selectedIndex == idx;

          return InkWell(
            onTap: () => onTap(idx),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        isSelected ? AppColors.themecolor : Colors.transparent,
                    width: 2.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    tab.icon,
                    color: isSelected ? AppColors.themecolor : Colors.grey,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    tab.label,
                    style: TextStyle(
                      color: isSelected ? AppColors.themecolor : Colors.grey,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
