import 'package:bottom_nav_bar_custom/class/bottom_bar_item.dart';
import 'package:bottom_nav_bar_custom/ui/bottom_bar_item.dart';
import 'package:flutter/material.dart';

class TaxiBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const TaxiBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.items,
  });

  final List<BottomBarItem> items;

  @override
  State<TaxiBottomNavigationBar> createState() =>
      _TaxiBottomNavigationBarState();
}

class _TaxiBottomNavigationBarState extends State<TaxiBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 78,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey, width: 1)),
        color: Colors.amber,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...widget.items
                .sublist(0, (widget.items.length / 2).round())
                .map(
                  (e) => BottomNavigationIconButton(
                    title: e.title,
                    svg: e.imagePath,
                    style: e.textStyle,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
