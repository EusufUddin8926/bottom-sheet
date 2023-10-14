import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomSheetData(String title, String subtitle) {
  return ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Icon(Icons.comment),
  );
}
