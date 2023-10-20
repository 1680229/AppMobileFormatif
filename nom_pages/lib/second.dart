import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nom_pages/main.dart';

class EcranConnexion extends StatefulWidget {
  EcranConnexion({Key? key}) : super(key: key);

  @override
  _EcranConnexionState createState() => _EcranConnexionState();
}

class _EcranConnexionState extends State<EcranConnexion> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
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
        title: Text('Yapalooza'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(color: Colors.green, child:
            const Text("texte au milieu",textAlign: TextAlign.center,),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_left),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
