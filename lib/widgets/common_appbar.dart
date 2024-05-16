import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppbar({required this.title, super.key, this.actions = const <Widget>[]});
  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
