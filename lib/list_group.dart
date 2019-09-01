library list_group;

import 'package:flutter/material.dart';
import './list_group_item.dart';

class ListGroup extends StatelessWidget {
  final List<ListGroupItem> items;
  final bool dense;

  ListGroup({
    Key key,
    @required this.items,
    this.dense = false
  }) : assert(items.length > 0) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(5.0),
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

