import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFuntions {
  static Color? getColor(String value) {
  switch (value) {
    case 'Green':
      return Colors.green;
    case 'Red':
      return Colors.red;
    case 'Blue':
      return Colors.blue;
    case 'Yellow':
      return Colors.yellow;
    case 'Orange':
      return Colors.orange;
    case 'Purple':
      return Colors.purple;
    case 'Pink':
      return Colors.pink;
    case 'Brown':
      return Colors.brown;
    case 'Grey':
      return Colors.grey;
    case 'Black':
      return Colors.black;
    case 'White':
      return Colors.white;
    case 'Primary':
      return const Color(0xFF6200EE);
    default:
      return null;
  }
}

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!, 
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => screen)
    );
  }

  static String truncateText (String text, int maxlength) {
    if (text.length <= maxlength) {
      return text;
    } else {
      return '${text.substring(0, maxlength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context) {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return screenSize(Get.context!).height;
  }

  static double screenWidth() {
    return screenSize(Get.context!).width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List <Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}