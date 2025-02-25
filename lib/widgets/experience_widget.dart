import 'package:flutter/material.dart';
import 'package:portfolio/utils/parse_functions.dart';

class ExperienceWidget extends StatelessWidget {
  final Map<String, String> data;
  final String image;
  const ExperienceWidget({
    required this.data,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: ParseFunctions.responsive(context) ? 300 : null,
      width: ParseFunctions.responsive(context) ? width * 0.7 : width * 0.9,
      margin: const EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(
        vertical: ParseFunctions.responsive(context) ? 5 : 20,
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
      child: ParseFunctions.responsive(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: 250,
                  width: 250,
                  filterQuality: FilterQuality.high,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: ParseFunctions.responsive(context)
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${data["role"] ?? ""} at ${data["name"] ?? ""}",
                        textScaler: TextScaler.noScaling,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      if (ParseFunctions.responsive(context))
                        const SizedBox(
                          width: 20,
                        ),
                      Chip(
                        backgroundColor: Colors.black45,
                        padding: const EdgeInsets.all(5),
                        label: Text(
                          data["duration"] ?? "",
                          textScaler: TextScaler.noScaling,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                      ),
                      if (ParseFunctions.responsive(context))
                        const SizedBox(
                          width: 20,
                        ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          data["description"] ?? "",
                          textScaler: TextScaler.noScaling,
                          textAlign: ParseFunctions.responsive(context)
                              ? TextAlign.justify
                              : TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                      ),
                      if (ParseFunctions.responsive(context))
                        const SizedBox(
                          width: 20,
                        ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          await ParseFunctions.launchConnection(
                            data["website"] ?? "",
                            context,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.onPrimary,
                          padding: const EdgeInsets.all(20),
                        ),
                        icon: Icon(
                          Icons.open_in_new,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        label: Text(
                          "Visit Company Website",
                          textScaler: TextScaler.noScaling,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: 250,
                  width: 250,
                  filterQuality: FilterQuality.high,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "${data["role"] ?? ""} at ${data["name"] ?? ""}",
                  textScaler: TextScaler.noScaling,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                if (!ParseFunctions.responsive(context))
                  const SizedBox(
                    height: 20,
                  ),
                Chip(
                  backgroundColor: Colors.black45,
                  padding: const EdgeInsets.all(5),
                  label: Text(
                    "Duration: ${data["duration"]}",
                    textScaler: TextScaler.noScaling,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ),
                if (!ParseFunctions.responsive(context))
                  const SizedBox(
                    height: 20,
                  ),
                Text(
                  data["description"] ?? "",
                  textScaler: TextScaler.noScaling,
                  textAlign: ParseFunctions.responsive(context)
                      ? TextAlign.justify
                      : TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                if (!ParseFunctions.responsive(context))
                  const SizedBox(
                    height: 20,
                  ),
                ElevatedButton.icon(
                  onPressed: () async {
                    await ParseFunctions.launchConnection(
                      data["website"] ?? "",
                      context,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    padding: const EdgeInsets.all(20),
                  ),
                  icon: Icon(
                    Icons.open_in_new,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  label: Text(
                    "Visit Company Website",
                    textScaler: TextScaler.noScaling,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
