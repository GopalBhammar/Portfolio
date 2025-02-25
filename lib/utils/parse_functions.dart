import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ParseFunctions {
  static bool responsive(BuildContext context) {
    return MediaQuery.of(context).size.width >
        MediaQuery.of(context).size.height;
  }

  static bool equal(BuildContext context) {
    return MediaQuery.of(context).size.width ==
        MediaQuery.of(context).size.height;
  }

  static Future<void> launchConnection(
      String link, BuildContext context) async {
    final url = Uri.parse(link);
    await launchUrl(
      url,
      webOnlyWindowName: "_blank",
    );
  }
}
