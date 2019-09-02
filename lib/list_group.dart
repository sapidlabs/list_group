library list_group;

import 'package:flutter/material.dart';
import './list_group_item.dart';

class ListGroup extends StatelessWidget {
  final List<ListGroupItem> items;

  ListGroup({
    Key key,
    @required this.items,
  }) : assert(items.length > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Material(
        elevation: 1,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 0.1),
          borderRadius: BorderRadius.circular(4.0)
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

