import 'package:flutter/material.dart';
import 'package:portfolio/utils/data.dart';
import 'package:portfolio/utils/parse_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          "assets/background.jpg",
          height: height,
          width: width > height ? width * 0.77 : width,
          fit: BoxFit.cover,
        ),
        Container(
          height: height,
          width: width > height ? width * 0.77 : width,
          color: Colors.black87,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: Text(
                    Data.name,
                    textScaler: TextScaler.noScaling,
                    textAlign: TextAlign.center,
                    style: ParseFunctions.responsive(context)
                        ? Theme.of(context).textTheme.displayLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            )
                        : Theme.of(context).textTheme.displayMedium!.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    Data.description,
                    textScaler: TextScaler.noScaling,
                    textAlign: TextAlign.center,
                    style: ParseFunctions.responsive(context)
                        ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w200,
                            )
                        : Theme.of(context).textTheme.headlineMedium!.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w200,
                            ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
