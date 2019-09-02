# List Group

A flutter package for Android and iOS, that allows you to add grouped list items to the app.

## Here is how it looks

![Android List group Item](https://raw.githubusercontent.com/sapidlabs/list_group/master/screenshots/android_list_group.png "Android List Group Item")

![iOS List group Item](https://raw.githubusercontent.com/sapidlabs/list_group/master/screenshots/ios_list_group.png "iOS List Group Item")

### Usage

Add the dependency to your **pubspec.yaml** file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    list_group:
```

### Use within your application.

```dart
import 'package:list_group/list_group.dart';
import 'package:list_group/list_group_item.dart';


ListGroup(
  items: [
    ListGroupItem(
      leading: Icon(
        FontAwesomeIcons.solidHeart,
        color: Colors.red,
      ),
      title: Text('Likes'),
      subtitle: Text('5 new', style: TextStyle(fontSize: 15),),
      trailing: Icon(Icons.chevron_right),
    ),
    ListGroupItem(
      leading: Icon(
        FontAwesomeIcons.eye,
        color: Colors.green,
      ),
      title: Text('Visitors'),
      subtitle: Text('10 recent', style: TextStyle(fontSize: 15),),
      trailing: Icon(Icons.chevron_right),
    ),
    ListGroupItem(
      leading: Icon(
        FontAwesomeIcons.userFriends,
        color: Colors.blue,
      ),
      title: Text('Followers'),
      subtitle: Text('Trusted', style: TextStyle(fontSize: 15),),
      trailing: Icon(Icons.chevron_right),
      lastItem: true,
    )
  ],
);
```

### ListGroup
The list group widget expects `items` to be `List` of `ListGroupItem`.

##### Options
`items:` List of ListGroupItem.

### ListGroupItem

This builds up the each item in list group.

##### Options
1. `leading` : expects a widget to be placed within the list item.
2. `title` : expects a widget, usually a `Text` widget which displays the text in the list.
3. `subtitle` : expects a widget, usually a `Text` widget which is displayed below the title.
4. `trailing` : expects a widget to be placed within the list item.
5. `dense` : expects either `true` or `false` defaults to `true`, compacts height of list tile.
6. `enabled` : whether list item is enabled, defaults to true.
7. `lastItem` : **Important**** this decides whether to add divider after the list item. defaults to `false`.
8. `onTap` : expects a callback method to be executed on tap of list item.
9. `onLongPress` : expects a callback method to be executed on long press of list item. 

See example above mentioned code snippet for more details.


## License

Copyright 2018 @Sapidlabs

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
