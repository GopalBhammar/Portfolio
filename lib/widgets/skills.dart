import 'package:flutter/material.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/widgets/skill_widget.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  List<Widget> getSkills() {
    List<Widget> skill = [];
    for (var s in Data.skills.keys) {
      skill.add(
        SkillWidget(
          imageUrl: Data.skills[s]!,
          help: s,
        ),
      );
    }
    return skill;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: getSkills(),
      ),
    );
  }
}
