import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/rounded_buttons.dart';

class ConnectIconRow extends StatelessWidget {
  const ConnectIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButton(
              tooltip: "Gmail",
              iconName: Icons.email,
              onTap: () async {
                await ParseFunctions.launchConnection(
                  Data.gmail,
                  context,
                );
              },
            ),
            RoundedButton(
              tooltip: "LinkedIn",
              iconName: FontAwesomeIcons.linkedin,
              onTap: () async {
                await ParseFunctions.launchConnection(
                  Data.linkedin,
                  context,
                );
              },
            ),
            RoundedButton(
              tooltip: "GitHub",
              iconName: FontAwesomeIcons.github,
              onTap: () async {
                await ParseFunctions.launchConnection(
                  Data.github,
                  context,
                );
              },
            ),
            // RoundedButton(
            //   tooltip: "Twitter",
            //   iconName: FontAwesomeIcons.twitter,
            //   onTap: () async {
            //     await ParseFunctions.launchConnection(
            //       Data.twitter,
            //       context,
            //     );
            //   },
            // ),
            // RoundedButton(
            //   tooltip: "Instagram",
            //   iconName: FontAwesomeIcons.instagram,
            //   onTap: () async {
            //     await ParseFunctions.launchConnection(
            //       Data.instagram,
            //       context,
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
