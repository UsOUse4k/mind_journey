import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';

Future<OkCancelResult> showInDevelopmentDialog(BuildContext context) async {
  return showOkAlertDialog(
    context: context,
    title: "В разработке",
  );
}
