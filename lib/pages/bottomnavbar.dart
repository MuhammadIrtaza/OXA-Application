import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({Key? key}) : super(key: key);

  @override
  _BottomnavbarState createState() => _BottomnavbarState();
}

List<NavigationItem> items = [
  NavigationItem(Icon(Icons.home), Text("Home")),
  NavigationItem(Icon(Icons.search), Text("Search")),
  NavigationItem(Icon(Icons.notifications_outlined), Text("Notification")),
  NavigationItem(Icon(Icons.person_outline), Text("Profile")),
];

class _BottomnavbarState extends State<Bottomnavbar> {
  int selectedIndex = 0;
  Color backgroundColor = Colors.blue;

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      height: double.maxFinite,
      width: isSelected ? 120 : 50,
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.all(Radius.circular(50)))
          : null,
      child: Row(
        children: [
          IconTheme(
            data: IconThemeData(
                size: 24, color: isSelected ? backgroundColor : Colors.grey),
            child: item.icon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: isSelected
                ? DefaultTextStyle.merge(
                    style: TextStyle(color: backgroundColor), child: item.title)
                : Container(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          ),
        ],
      ),
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map(
          (item) {
            var itemIndex = items.indexOf(item);
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = itemIndex;
                });
              },
              child: _buildItem(item, selectedIndex == itemIndex),
            );
          },
        ).toList(),
      ),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;
  NavigationItem(this.icon, this.title);
}
