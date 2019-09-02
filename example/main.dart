import 'package:flutter/material.dart';
import 'package:list_group/list_group.dart';
import 'package:list_group/list_group_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('App With Grouped List'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: ListGroup(
              items: [
                ListGroupItem(
                  leading: Icon(
                    Icons.thumb_up,
                    color: Colors.red,
                  ),
                  title: Text('Likes'),
                  subtitle: Text(
                    '5 new',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListGroupItem(
                  leading: Icon(
                    Icons.remove_red_eye,
                    color: Colors.green,
                  ),
                  title: Text('Visitors'),
                  subtitle: Text(
                    '10 recent',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListGroupItem(
                  leading: Icon(
                    Icons.verified_user,
                    color: Colors.blue,
                  ),
                  title: Text('Followers'),
                  subtitle: Text(
                    'Trusted',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  lastItem: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
