import 'package:fl_components/theme/global_theme.dart';
import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'settings': Icons.settings,
  'home': Icons.home,
};

Icon getIcon(String icon) {
  return Icon(
    _icons[icon],
    color: primary,
  );
}
