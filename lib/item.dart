import 'package:flutter/material.dart';

final List<Item> items = [
  Item(
      icon: Icon(Icons.casino_outlined, size: 24, color: Colors.white),
      description: 'Entertainment',
      number: "-€190,00",
      date: "Aug 11, 2023",
      hour: "03:15 PM"),

  Item(
      icon: Icon(Icons.work, size: 24, color: Colors.white),
      description: 'Salary',
      number: "+€2490,00",
      date: "Aug 02, 2023",
      hour: "09:00 AM"),
  Item(
      icon: Icon(Icons.gamepad_outlined, size: 24, color: Colors.white),
      description: 'Games',
      number: "-€72,00",
      date: "Jul 31, 2023",
      hour: "02:46 PM"),
  Item(
      icon: Icon(Icons.sports, size: 24, color: Colors.white),
      description: 'Personal trainer',
      number: "-55,40",
      date: "Aug 11, 2023",
      hour: "13:15 PM"),

  // Agrega más elementos aquí
];

class Item {
  final Icon icon;
  final String description;
  final String number;
  final String date;
  final String hour;

  Item(
      {required this.date,
      required this.icon,
      required this.description,
      required this.number,
      required this.hour});
}
