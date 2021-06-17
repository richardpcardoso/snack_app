import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:snack_app/models/User.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase(){
  return getDatabasesPath().then((dbPath){
    final String path = join(dbPath, 'snack.db');
    return openDatabase(path, onCreate: (db, version){
      db.execute('CREATE TABLE user('
          'id INTEGER PRIMARY KEY, '
          'nome TEXT, '
          'email TEXT, '
          'token TEXT)');
    }, version: 1);
  });
}

Future<int> save (User user){
  return createDatabase().then((db) {
    final Map<String, dynamic> userMap = Map();
    userMap['nome'] = user.nome;
    userMap['email'] = user.email;
    userMap['token'] = user.token;
    return db.insert('user', userMap);
  });
}

Future<List<User>> findAll(){
  return createDatabase().then((db){
    return db.query('user').then((maps){
      final List<User> users = List();
      for(Map<String, dynamic> map in maps){
        final User user = User(map['id'], map['nome'], map['email'], map['token']);
        users.add(user);
      }
      return users;
    });
  });
}