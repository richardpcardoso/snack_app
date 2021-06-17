import 'package:flutter/material.dart';
import 'package:snack_app/screens/agenda.dart';
import 'package:snack_app/screens/login.dart';
import 'package:snack_app/screens/perfil.dart';
import 'package:snack_app/screens/search.dart';
import 'package:snack_app/utils/componentes.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                      child: Column(
                        children: [
                          Text(
                            "Oii Richard",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                          ),
                          Text(
                            "Bora planejar o lanche da semana?",
                            style: TextStyle(fontSize: 16, color: Colors.black54),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Material(
                    color: const Color(0xff333333),
                    borderRadius: BorderRadius.circular(10.0),
                    elevation: 10.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          (MaterialPageRoute(
                            builder: (context) => Search(),
                          )),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        height: 130,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.food_bank,
                                      color: const Color(0xff5f5f5f),
                                      size: 45.0,
                                    ),
                                  ]
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text('Nova Refeição', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
                                  Text('Adicionar nova refeição', style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Material(
                    color: const Color(0xff333333),
                    borderRadius: BorderRadius.circular(10.0),
                    elevation: 10.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          (MaterialPageRoute(
                            builder: (context) => Agenda(),
                          )),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        height: 130,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.book,
                                      color: const Color(0xff5f5f5f),
                                      size: 45.0,
                                    ),
                                  ]
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  /*Icon(Icons.people),*/
                                  Text('Agenda', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
                                  Text('Suas refeições agendadas', style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Material(
                    color: const Color(0xff333333),
                    borderRadius: BorderRadius.circular(10.0),
                    elevation: 10.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          (MaterialPageRoute(
                            builder: (context) => Perfil(),
                          )),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        height: 130,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.account_circle,
                                      color: const Color(0xff5f5f5f),
                                      size: 45.0,
                                    ),
                                  ]
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  /*Icon(Icons.people),*/
                                  Text('Perfil', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
                                  Text('Dados pessoais e conta!', style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}