
import 'package:flutter/material.dart';
import 'package:snack_app/screens/dashboard.dart';
import 'package:snack_app/screens/login.dart';
import 'package:snack_app/utils/componentes.dart';

class Perfil extends StatefulWidget {
const Perfil({Key key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {

  Function validaEmpty = ((value){
    if(value.isEmpty){
      return "Informe um valor";
    }

    return null;
  });

@override
Widget build(BuildContext context) {
  final _kTabPages = <Widget>[
    Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextFormField(
                  //controller: _cepController,
                  validator: validaEmpty,
                  initialValue: "Richard Cardoso",
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
                  initialValue: "(48) 98814-3991",
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
                    Componentes.botao("Deslogar", (){
                      Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => Login()));
                    }, color: Colors.white10, font: Colors.black87),
                    Componentes.botao("Salvar", (){
                      Navigator.pop(context, "");
                    })
                  ],
                )
            ),
          ],
        ),
      ),
    ),
    Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(Icons.construction, size: 64.0, color: Color(0xFF333333)),
            Text("Ainda estamos trabalhando nisso!")
          ],
        )
    ),
  ];
  final _kTabs = <Tab>[
    const Tab(icon: Icon(Icons.account_circle), text: 'Dados Pessoais'),
    const Tab(icon: Icon(Icons.picture_as_pdf), text: 'Plano Alimentar'),
  ];
  return DefaultTabController(
    length: _kTabs.length,
    child: Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
        backgroundColor: Colors.orange,
        bottom: TabBar(
          tabs: _kTabs,
        ),
      ),
      body: TabBarView(
        children: _kTabPages,
      ),
    ),
  );
}
}
