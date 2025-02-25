import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/parse_functions.dart';

class AboutWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const AboutWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      width: ParseFunctions.responsive(context) ? width * 0.3 : width * 0.8,
      margin: MediaQuery.of(context).size.width > 400
          ? const EdgeInsets.all(20)
          : const EdgeInsets.symmetric(vertical: 20),
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
            Colors.black38,
            Colors.black26,
            Colors.white24,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white12,
            child: FaIcon(
              icon,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 40,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: InkWell(
              onTap: () async {
                if (text.startsWith("https")) {
                  await ParseFunctions.launchConnection(
                    text,
                    context,
                  );
                }
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  textScaler: TextScaler.noScaling,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
