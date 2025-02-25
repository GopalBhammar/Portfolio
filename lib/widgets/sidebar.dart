import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/acievement_screen.dart';
import 'package:portfolio/screens/contact_screen.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/project_screen.dart';
import 'package:portfolio/screens/resume_screen.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/connect_icon_row.dart';
import 'package:portfolio/widgets/sidebar_list_tile.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.23,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const CircleAvatar(
            radius: 88,
            backgroundImage: AssetImage("assets/me.jpg"),
          ),
          const SizedBox(
            height: 30,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              Data.name,
              textScaler: TextScaler.noScaling,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          if (ParseFunctions.responsive(context)) ...[
            const SizedBox(
              height: 30,
            ),
            const ConnectIconRow(),
          ],
          const SizedBox(
            height: 30,
          ),
          SidebarListTile(
            title: "Home",
            icon: Icons.home_filled,
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                Home.routeName,
                (route) => false,
              );
            },
          ),
          SidebarListTile(
            title: "About",
            icon: Icons.person,
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                AboutScreen.routeName,
                (route) => false,
              );
            },
          ),
          SidebarListTile(
            title: "Resume",
            icon: Icons.contact_page_outlined,
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                ResumeScreen.routeName,
                (route) => false,
              );
            },
          ),
          SidebarListTile(
            title: "Projects",
            icon: FontAwesomeIcons.globe,
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                ProjectScreen.routeName,
                (route) => false,
              );
            },
          ),
          // SidebarListTile(
          //   title: "Blogs",
          //   icon: Icons.edit_document,
          //   onTap: () {
          //     Navigator.of(context).pushNamedAndRemoveUntil(
          //       BlogScreen.routeName,
          //       (route) => false,
          //     );
          //   },
          // ),
          SidebarListTile(
            title: "Achievements",
            icon: FontAwesomeIcons.trophy,
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                AchievementScreen.routeName,
                (route) => false,
              );
            },
          ),
          SidebarListTile(
            title: "Contact",
            icon: Icons.contact_support_outlined,
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                ContactScreen.routeName,
                (route) => false,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "©️ ${DateTime.now().year} | Gopal Bhammar",
              textScaler: TextScaler.noScaling,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
