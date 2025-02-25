import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final String imageUrl;
  final String help;
  const SkillWidget({
    super.key,
    required this.imageUrl,
    required this.help,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: help,
      child: Container(
        height: 100,
        width: 100,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.white30,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
            ),
          ],
          gradient: const LinearGradient(
            colors: [
              Colors.white10,
              Colors.white38,
              Colors.white70,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Image.network(
            imageUrl,
            alignment: Alignment.center,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
