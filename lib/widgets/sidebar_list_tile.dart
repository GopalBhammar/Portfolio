import 'package:flutter/material.dart';

class SidebarListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const SidebarListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 45),
        child: ListTile(
          style: ListTileStyle.drawer,
          onTap: onTap,
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              textScaler: TextScaler.noScaling,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.onPrimary,
            size: 32,
          ),
        ),
      ),
    );
  }
}
