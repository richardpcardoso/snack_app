
import 'package:flutter/material.dart';
import 'package:snack_app/screens/search.dart';

class Agenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sua agenda"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Delícias da Fer', style: TextStyle(fontSize: 18.0)),
              subtitle: Text('14/03/2021 - 12:15', style: TextStyle(fontSize: 14.0)),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Delícias da Fer', style: TextStyle(fontSize: 18.0)),
              subtitle: Text('15/03/2021 - 12:15', style: TextStyle(fontSize: 14.0)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add,),
        onPressed: () {
          Navigator.of(context).push(
            (MaterialPageRoute(
              builder: (context) => Search(),
            )),
          );
        },
      ),
    );
  }

}