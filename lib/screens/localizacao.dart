
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:snack_app/models/Local.dart';
import 'package:snack_app/utils/componentes.dart';

class Localizacao extends StatefulWidget {

  @override
  _LocalizacaoState createState() => _LocalizacaoState();
}

class _LocalizacaoState extends State<Localizacao> {
  final TextEditingController _cepController = TextEditingController();
  GlobalKey<FormState> cForm = GlobalKey<FormState>();
  bool visivel = false;

  String rua = "Rua: ";
  String complemento = "Complemento: ";
  String bairro = "Bairro: ";
  String cidade = "Cidade: ";
  String estado = "Estado: ";
  String cep = "CEP: ";

  Function validaEmpty = ((value){
    if(value.isEmpty){
      return "Informe um valor";
    }

    return null;
  });

  consultarCep() async{
    if(!cForm.currentState.validate())
      return;

    String url = "https://viacep.com.br/ws/${_cepController.text}/json/";
    Response response = await get(url);
    Map endereco = json.decode(response.body);

    setState(() {
      cep = endereco["cep"];
      rua = endereco["logradouro"];
      bairro = endereco["bairro"];
      cidade = endereco["localidade"];
      estado = endereco["uf"];
      visivel = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onde você vai receber o pedido?"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.location_on), onPressed: (){})
        ],
      ),
      body: Form(
        key: cForm,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Visibility(
                  visible: !visivel,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _cepController,
                        validator: validaEmpty,
                        decoration: InputDecoration(
                          labelText: 'CEP',
                        ),
                        style: TextStyle(
                            fontSize: 18.0
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Componentes.botao("Consultar", consultarCep),
                      ),
                    ],
                  )
              ),
              Visibility(
                visible: visivel,
                child: Container(
                  child: Column(
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 15.0, bottom: 15.0), child: Column(
                        children: [
                          Componentes.label(rua),
                          Componentes.label(bairro),
                          Componentes.label(cidade + " - " + estado),
                        ],
                      )),
                      TextFormField(
                        //controller: _cepController,
                        validator: validaEmpty,
                        decoration: InputDecoration(
                          labelText: 'Complemento',
                        ),
                        style: TextStyle(
                            fontSize: 18.0
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: TextFormField(
                          //controller: _cepController,
                          validator: validaEmpty,
                          decoration: InputDecoration(
                            labelText: 'Número',
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
                              setState(() {
                                visivel = !visivel;
                              });
                            }, color: Colors.white10, font: Colors.black87),
                            Componentes.botao("Salvar", (){
                              Navigator.pop(context, cep);
                            }),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}