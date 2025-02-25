import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';
import 'package:portfolio/widgets/about_widget.dart';
import 'package:portfolio/widgets/education_widget.dart';
import 'package:portfolio/widgets/experience_widget.dart';
import 'package:portfolio/widgets/side_drawer.dart';
import 'package:portfolio/widgets/sidebar.dart';
import 'package:portfolio/widgets/skills.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/about";
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: !ParseFunctions.responsive(context) ? const SideDrawer() : null,
      appBar: !ParseFunctions.responsive(context)
          ? AppBar(
              title: Text(
                Data.name,
                textScaler: TextScaler.noScaling,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            )
          : null,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (ParseFunctions.responsive(context)) const Sidebar(),
          Stack(
            children: [
              Image.asset(
                "assets/about.jpeg",
                height: height,
                width: width > height ? width * 0.77 : width,
                fit: BoxFit.cover,
              ),
              Container(
                height: height,
                width: width > height ? width * 0.77 : width,
                color: Colors.black87,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        textScaler: TextScaler.noScaling,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        Data.about,
                        textScaler: TextScaler.noScaling,
                        textAlign: TextAlign.justify,
                        style: ParseFunctions.responsive(context)
                            ? Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontWeight: FontWeight.w300,
                                )
                            : Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontWeight: FontWeight.w300,
                                ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.surface,
                        endIndent: 50,
                        indent: 50,
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Skills",
                            textScaler: TextScaler.noScaling,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Skills(),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.surface,
                        endIndent: 50,
                        indent: 50,
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Experience",
                        textScaler: TextScaler.noScaling,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      ExperienceWidget(
                        data: Data.experience[0]["Intern"]![0],
                        image: "assets/tatvasoft.jpeg",
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.surface,
                        endIndent: 50,
                        indent: 50,
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Education",
                        textScaler: TextScaler.noScaling,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          EducationWidget(
                            data: Data.education[0],
                          ),
                          EducationWidget(
                            data: Data.education[1],
                          ),
                          EducationWidget(
                            data: Data.education[2],
                          ),
                          EducationWidget(
                            data: Data.education[3],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.surface,
                        endIndent: 50,
                        indent: 50,
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "General Details",
                        textScaler: TextScaler.noScaling,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Wrap(
                        children: [
                          AbsorbPointer(
                            absorbing: true,
                            child: AboutWidget(
                              icon: Icons.school_outlined,
                              text: Data.study,
                            ),
                          ),
                          AbsorbPointer(
                            absorbing: true,
                            child: AboutWidget(
                              icon: Icons.location_on_outlined,
                              text: Data.location,
                            ),
                          ),
                          AbsorbPointer(
                            absorbing: true,
                            child: AboutWidget(
                              icon: FontAwesomeIcons.cakeCandles,
                              text: Data.dob,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
