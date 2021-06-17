import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Componentes{
  static _botao(String _texto, Function _f){
    return Container(
      child: RaisedButton(
        onPressed: _f,
        child: Text(
          _texto,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side:  const BorderSide(color: Colors.black, width: 4)
        ),
        color: Colors.black87.withOpacity(0.4),
        hoverColor: Colors.black87.withOpacity(0.3),
      ),
    );
  }

  static botao(String _texto, Function _f, {Color font: Colors.white, Color color: Colors.black54}){
    return ElevatedButton(
        onPressed: _f,
        child:
        Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 10.0, right: 14.0, bottom: 10.0),
            child: Text(_texto, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(font),
            backgroundColor: MaterialStateProperty.all<Color>(color)));
  }

  static inputText(String _label, String _desc, TextEditingController controlador, valicao, {bool obscure = false, bool number = false}){
    return TextFormField(
      controller: controlador,
      obscureText: obscure,
      validator: valicao,
      keyboardType: number?TextInputType.number:TextInputType.text,
      decoration: InputDecoration(
        labelText: _label,
        labelStyle: TextStyle(fontSize: 18),
        hintText: _desc,
        hintStyle: TextStyle(fontSize: 14, color: Colors.red),
      ),
    );
  }

  static label (String _label){
    return Text(
      _label,
      style: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          fontSize: 18
      ),
    );
  }
}