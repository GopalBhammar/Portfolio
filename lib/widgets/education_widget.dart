import 'package:flutter/material.dart';
import 'package:portfolio/utils/parse_functions.dart';

class EducationWidget extends StatelessWidget {
  final Map<String, String> data;
  const EducationWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 350,
      width: ParseFunctions.responsive(context) ? width * 0.21 : width * 0.8,
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
            Colors.black38,
            Colors.black26,
            Colors.white24,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 64,
            backgroundImage: AssetImage(data["image"].toString()),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              data["degree"]!,
              textScaler: TextScaler.noScaling,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                  ),
            ),
          ),
          Text(
            data["name"]!,
            textScaler: TextScaler.noScaling,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              Chip(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                label: Text(
                  "Score: ${data["score"]!}",
                  textScaler: TextScaler.noScaling,
                ),
              ),
              Chip(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                label: Text(
                  data["duration"]!,
                  textScaler: TextScaler.noScaling,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
