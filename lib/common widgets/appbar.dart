import 'package:flutter/material.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String heading;
  final double size;
  const CommonAppBar({super.key, required this.heading, required this.size});

  @override
  State<CommonAppBar> createState() => _CommonAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(size / 6);
}

class _CommonAppbarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text(widget.heading,
          style: TextStyle(
            fontSize: widget.size / 15,
            fontFamily: 'Helvatical',
            fontWeight: FontWeight.w600,
            color: Colors.white,
          )),
      toolbarHeight: widget.size / 6,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
      ),
    );
  }
}
