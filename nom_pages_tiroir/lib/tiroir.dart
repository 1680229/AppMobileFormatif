import 'package:flutter/material.dart';
import 'package:nom_pages_tiroir/second.dart';

import 'main.dart';

class Tiroir extends StatefulWidget {
  const Tiroir({key});
  @override
  State<StatefulWidget> createState() => TiroirState();
}

class TiroirState extends State<Tiroir> {
  @override
  Widget build(BuildContext context) {
    var listView = ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.green),
          child: Text('prénom nom'),
        ),
        Container(height: 200,),
        ListTile(
          title: Text('Page 1'),
          onTap: () {
            Navigator.of(context).pop();
            if (context.mounted) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyHomePage(title: 'Page 1')));
            }
            // Then close the drawer
          },
        ),
        ListTile(
          title: Text('Page 2'),
          onTap: () {
            Navigator.of(context).pop();
            if (context.mounted) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EcranConnexion()));
            }
            // Then close the drawer
          },
        ),

      ],
    );

    return Drawer(
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: listView,
      ),
    );
  }
}