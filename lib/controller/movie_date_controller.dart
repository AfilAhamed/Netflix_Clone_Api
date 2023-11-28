import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieDateController extends ChangeNotifier {
  String fetchDate(String date) {
    DateTime dateInFormat = DateTime.parse(date);
    final formatDate = (DateFormat.MMMMd().format(dateInFormat)).split(" ");
    return "${formatDate.first.substring(0, 3)} \n${formatDate.last}";
  }

  String fetchDay(String date) {
    DateTime dateInFormat = DateTime.parse(date);
    final dayName = DateFormat('EEEE').format(dateInFormat);
    return dayName;
  }
}
