library list_group;

import 'package:flutter/material.dart';
import './list_group_item.dart';

class ListGroup extends StatelessWidget {

  final List<ListGroupItem> items;

  // List group border size
  final borderWidth;

  // List group border color
  final borderColor;

  // List group border radius
  final borderRadius;

  ListGroup({
    Key key,
    this.borderWidth = 0.1,
    this.borderColor = Colors.grey,
    this.borderRadius = 4.0,
    @required this.items,
  }) : assert(items.length > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Material(
        elevation: 1,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            children: items,
          ),
        ),
      ),
    );
  }
}
