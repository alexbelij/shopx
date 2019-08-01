import 'package:flutter/material.dart';
import 'package:shoptronics/common/cart_icon.dart';
import 'package:shoptronics/common/drawer_icon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final num height;
  HomeAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0),
        child: DrawerIcon(),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 16.0),
          child: CartIcon(),
        ),
      ],
    );
  }
}
