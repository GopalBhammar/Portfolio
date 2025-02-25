import 'package:flutter/material.dart';
import 'package:portfolio/widgets/sidebar.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Sidebar(),
    );
  }
}
