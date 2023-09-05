import 'package:flutter/material.dart';

import 'app_card.dart';

List<AppCard> appCardData = [
  const AppCard(
    storage: 60,
    title: 'Dropbox',
    imgSrc: Icons.person,
    color: Colors.blue,
  ),
  const AppCard(
    storage: 40,
    title: 'Gmail',
    imgSrc: Icons.drafts,
    color: Colors.redAccent,
  ),
  const AppCard(
    storage: 80,
    title: 'Whatsapp',
    imgSrc: Icons.message_rounded,
    color: Colors.green,
  ),
  AppCard(
    storage: 80,
    title: 'Instagram',
    imgSrc: Icons.bubble_chart,
    color: Colors.orange[700] ?? Colors.deepOrangeAccent,
  ),
  const AppCard(
    storage: 80,
    title: 'Facebook',
    imgSrc: Icons.face,
    color: Colors.deepPurpleAccent,
  ),
];
