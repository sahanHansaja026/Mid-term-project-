import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final Color backgroundColor;
  final TextStyle titleTextStyle;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.backgroundColor = Colors.black,
    this.titleTextStyle = const TextStyle(
      color: Colors.white, // Default font color
      fontSize: 20, // Default font size
      fontWeight: FontWeight.bold, // Default font weight
    ),
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: titleTextStyle,
      ),
      backgroundColor: backgroundColor,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
