import 'package:flutter/foundation.dart';

class Category {
  final String image;
  final String title;
  final String subtitle;
  final String info;

  Category({
    @required this.image,
    @required this.title,
    @required this.subtitle,
    @required this.info,
  });
}

final List<Category> categories = [
  Category(
    image: 'assets/icons/identity.png',
    title: 'Documents',
    subtitle: 'Identity cards',
    info: '2 cards',
  ),
  Category(
    image: 'assets/icons/transportation.png',
    title: 'Transportation',
    subtitle: 'Tickets and fares',
    info: '0 cards',
  ),
  Category(
    image: 'assets/icons/shopping.png',
    title: 'Shopping',
    subtitle: 'Loyalty cards',
    info: '0 cards',
  ),
  Category(
    image: 'assets/icons/others.png',
    title: 'Others',
    subtitle: 'Uncategorized',
    info: '0 cards',
  )
];
