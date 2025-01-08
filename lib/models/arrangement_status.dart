import 'package:flutter/material.dart';

class ArrangementStatus {
  ArrangementStatus();

  static const int STATUS_PENDING = 1;
  static const int STATUS_ACCEPTED = 2;
  static const int STATUS_REJECTED = 3;
  static const int STATUS_CANCELED = 4;
  static const int STATUS_FINISHED = 5;

  static final Color STATUS_PENDING_COLOR = Colors.yellow.shade300;
  static final Color STATUS_ACCEPTED_COLOR = Colors.blue.shade300;
  static final Color STATUS_REJECTED_COLOR = Colors.purple.shade300;
  static final Color STATUS_CANCELED_COLOR = Colors.red.shade300;
  static final Color STATUS_FINISHED_COLOR = Colors.green.shade300;
  //separated of logic(need for button mark in Arrangements details)
  static final Color STATUS_MODIFY_COLOR = Colors.yellow.withOpacity(0.3);

  static const String STATUS_PENDING_TEXT = "Pending";
  static const String STATUS_ACCEPTED_TEXT = "Accepted";
  static const String STATUS_REJECTED_TEXT = "Rejected";
  static const String STATUS_CANCELED_TEXT = "Canceled";
  static const String STATUS_FINISHED_TEXT = "Finished";
}
