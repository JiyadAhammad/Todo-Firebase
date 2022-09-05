import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Untils {
  static void showSnackbar(BuildContext context, String text) =>
      Scaffold.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(text)));
  static DateTime toDateTime(Timestamp value) {
    return value.toDate();
  }

  static DateTime fromDateTimeToJson(DateTime date) {
    return date.toUtc();
  }
}
