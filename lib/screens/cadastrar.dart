
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:snack_app/models/Local.dart';
import 'package:snack_app/screens/dashboard.dart';
import 'package:snack_app/utils/componentes.dart';

class Cadastrar extends StatefulWidget {

  @override
  _CadastrarState createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  final TextEditingController _cepController = TextEditingController();
  GlobalKey<FormState> cForm = GlobalKey<FormState>();
  bool visivel = false;

  Function validaEmpty = ((value){
    if(value.isEmpty){
      return "Informe um valor";
    }

    return null;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Legal, tem alguém novo por aqui"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextFormField(
                  //controller: _cepController,
                  validator: validaEmpty,
                  decoration: InputDecoration(
                    labelText: 'Nome:',
                  ),
                  style: TextStyle(
                      fontSize: 18.0
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextFormField(
                  //controller: _cepController,
                  validator: validaEmpty,
                  decoration: InputDecoration(
                    labelText: 'Email:',
                  ),
                  style: TextStyle(
                      fontSize: 18.0
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextFormField(
                  //controller: _cepController,
                  validator: validaEmpty,
                  decoration: InputDecoration(
                    labelText: 'Telefone:',
                  ),
                  style: TextStyle(
                      fontSize: 18.0
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Componentes.botao("Voltar", (){
                      Navigator.pop(context, "");
                    }, color: Colors.white10, font: Colors.black87),
                    Componentes.botao("Salvar", (){
                      Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => Dashboard()));
                    })
                  ],
                )
            ),
          ],
        ),
      )
    );
  }
}