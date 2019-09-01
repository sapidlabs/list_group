import 'package:flutter/material.dart';

class ListGroupItem extends StatelessWidget {
  // Whether the item list item is last item in the list group
  final bool lastItem;
  // Leading widget of the list group item
  final Widget leading;
  // Trailing widget of the list group item
  final Widget trailing;
  // Title expects a text widget
  final Widget title;
  // Subtitle expects a text widget.
  final Widget subtitle;

  final bool dense;
  // Default value is true
  final bool enabled;
  // On tap callback
  final GestureTapCallback onTap;
  // On long press callback function
  final GestureLongPressCallback onLongPress;

  ListGroupItem({
    Key key,
    this.lastItem = false,
    this.dense = false,
    this.enabled = true,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onLongPress,
  })  : assert(lastItem != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          dense: dense,
          enabled: enabled,
          onTap: enabled ? onTap : null,
          onLongPress: enabled ? onLongPress : null,
          leading: leading,
          title: title,
          trailing: trailing,
        ),
        if (!lastItem) Divider()
      ],
    );
  }
}
