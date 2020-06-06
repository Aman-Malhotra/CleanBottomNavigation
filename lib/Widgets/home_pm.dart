import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class HomePm extends ChangeNotifier {
  int _selected = 0;
  get getSelected => _selected;
  set setSelected(int i) {
    _selected = i;
    notifyListeners();
  }

  List<BottomData> bottomData = [
    BottomData(title: "Home", icon: OMIcons.home, color: Colors.purple, id: 0),
    BottomData(
        title: "Likes",
        icon: OMIcons.favoriteBorder,
        color: Colors.pink,
        id: 1),
    BottomData(
        title: "Search", icon: OMIcons.search, color: Colors.lightGreen, id: 2),
    BottomData(
        title: "Profile",
        icon: OMIcons.personOutline,
        color: Colors.lightBlue,
        id: 3),
  ];
}

class BottomData {
  final int id;
  final String title;
  final Color color;
  final IconData icon;
  BottomData({this.id, this.title, this.color, this.icon});
}
