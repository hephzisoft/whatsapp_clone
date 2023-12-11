class Item {
  Item({
    required this.headerValue,
    this.isExpanded = false,
  });

  String headerValue;
  bool isExpanded;

  static List<Item> status = [
    Item(headerValue: 'Viewed Update', isExpanded: false),
    Item(headerValue: 'Muted Update', isExpanded: false),
  ];
}
