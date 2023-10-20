import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nom_pages_tiroir/main.dart';
import 'package:nom_pages_tiroir/tiroir.dart';

class EcranConnexion extends StatefulWidget {
  EcranConnexion({Key? key}) : super(key: key);

  @override
  _EcranConnexionState createState() => _EcranConnexionState();
}

class _EcranConnexionState extends State<EcranConnexion> {
  final myController = TextEditingController();
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    if (context.mounted) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: 'Ecran 1',
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
        ),
        drawer: Tiroir(),
        body: Center(
            child: Row(children: [
          Expanded(
              child: TextFormField(
            controller: myController,
          )),
          Expanded(
              child: Column(children: [
            Expanded(
                child: TextFormField(
              controller: myController,
            )),
            MaterialButton(
              minWidth: 150,
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Annuler',
                  style: style.copyWith(fontWeight: FontWeight.normal)),
              onPressed: () {
                if (context.mounted) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(title: 'Page 1')));
                }
              },
            ),
            MaterialButton(
              minWidth: 150,
              color: Colors.blue,
              child: Text('Sauvegarder',
                  style: style.copyWith(
                      color: Colors.white, fontWeight: FontWeight.normal)),
              onPressed: () {
                if (context.mounted) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(title: 'Page 1')));
                }
              },
            )
          ])),
        ])));
  }
}
