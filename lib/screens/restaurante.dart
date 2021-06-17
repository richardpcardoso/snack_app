
import 'package:flutter/material.dart';
import 'package:snack_app/screens/localizacao.dart';

class Restaurante extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    selecionarHora() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2025),
      ).then((DateTime value) {
        if (value != null) {
          DateTime _fromDate = DateTime.now();
          _fromDate = value;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Refeição adicionada em sua agenda com sucesso!')),
          );
        }
      });
    }

    selecionarData() {
      final DateTime now = DateTime.now();
      showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
      ).then((TimeOfDay value) {
        if (value != null) {
          selecionarHora();
        }
      });
    }

    selecionarTamanha() {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => SimpleDialog(
          title: const Text('Tamanho'),
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Marmita P'),
              onTap: () => Navigator.pop(context, 'Marmita P adicionada'),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Marmita M'),
              onTap: () => Navigator.pop(context, 'Marmita M adicionada'),
            ),
            ListTile(
              leading: const Icon(Icons.add_circle),
              title: const Text('Marmita G'),
              onTap: () => Navigator.pop(context, 'Marmita G adicionada'),
            ),
            ListTile(
              leading: const Icon(Icons.add_circle),
              title: const Text('Marmita GG'),
              onTap: () => Navigator.pop(context, 'Marmita GG adicionada'),
            ),
          ],
        ),
      ).then((returnVal) {
        if (returnVal != null) {
          selecionarData();
        }
      });
    }


    return Scaffold(
      appBar: AppBar(
        title: Text("Food Box"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('FoodBox', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          Text('Cozinha Fit'),
                        ],
                      ),
                      Image.asset("assets/images/150/Group5.png"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 10.0),
                child: Column(
                  children: [
                    Text(
                      "Cardápio",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20.00, right: 15.0, bottom: 10.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: selecionarTamanha,
                    child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/produtos/2.png",
                            width: 80.0,
                          ),
                        ),
                        Padding( padding: const EdgeInsets.only(left: 20.0), child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mister', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('A partir de R\$ 8,00'),
                          ],
                        ),
                        )
                      ],
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20.00, right: 15.0, bottom: 10.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: selecionarTamanha,
                    child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/produtos/3.png",
                            width: 80.0,
                          ),
                        ),
                        Padding( padding: const EdgeInsets.only(left: 20.0), child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Select', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('A partir de R\$ 8,00'),
                          ],
                        ),
                        )
                      ],
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20.00, right: 15.0, bottom: 10.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: selecionarTamanha,
                    child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/produtos/4.png",
                            width: 80.0,
                          ),
                        ),
                        Padding( padding: const EdgeInsets.only(left: 20.0), child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Palácio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('A partir de R\$ 8,00'),
                          ],
                        ),
                        )
                      ],
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20.00, right: 15.0, bottom: 10.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: selecionarTamanha,
                    child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/produtos/6.png",
                            width: 80.0,
                          ),
                        ),
                        Padding( padding: const EdgeInsets.only(left: 20.0), child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Arte', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('A partir de R\$ 8,00'),
                          ],
                        ),
                        )
                      ],
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20.00, right: 15.0, bottom: 10.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: selecionarTamanha,
                    child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/produtos/5.png",
                            width: 80.0,
                          ),
                        ),
                        Padding( padding: const EdgeInsets.only(left: 20.0), child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Point', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('A partir de R\$ 8,00'),
                          ],
                        ),
                        )
                      ],
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20.00, right: 15.0, bottom: 10.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  elevation: 8.0,
                  child: InkWell(
                    onTap: selecionarTamanha,
                    child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/produtos/7.png",
                            width: 80.0,
                          ),
                        ),
                        Padding( padding: const EdgeInsets.only(left: 20.0), child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Go', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('A partir de R\$ 8,00'),
                          ],
                        ),
                        )
                      ],
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}