
import 'package:flutter/material.dart';
import 'package:snack_app/screens/localizacao.dart';
import 'package:snack_app/screens/restaurante.dart';
import 'package:transparent_image/transparent_image.dart'
    show kTransparentImage;


class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("O que encontramos perto de você"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.location_on), onPressed: (){
            Navigator.of(context).push(
              (MaterialPageRoute(
                builder: (context) => Localizacao(),
              )),
            ).then((cep) => debugPrint(cep));
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.00, right: 20.0, bottom: 10.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 8.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      (MaterialPageRoute(
                        builder: (context) => Restaurante(),
                      )),
                    );
                  },
                  child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                    children: [
                      Image.asset(
                        "assets/images/150/Group5.png",
                        width: 80.0,
                      ),
                      Padding( padding: const EdgeInsets.only(left: 10.0), child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('FoodBox', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Cozinha Fit'),
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
              padding: const EdgeInsets.only(left: 20.0, top: 20.00, right: 20.0, bottom: 10.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 8.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      (MaterialPageRoute(
                        builder: (context) => Restaurante(),
                      )),
                    );
                  },
                  child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                    children: [
                      Image.asset(
                        "assets/images/150/Group6.png",
                        width: 80.0,
                      ),
                      Padding( padding: const EdgeInsets.only(left: 10.0), child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Wholesome', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Comida Caseira'),
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
              padding: const EdgeInsets.only(left: 20.0, top: 20.00, right: 20.0, bottom: 10.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 8.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      (MaterialPageRoute(
                        builder: (context) => Restaurante(),
                      )),
                    );
                  },
                  child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                    children: [
                      Image.asset(
                        "assets/images/150/Group7.png",
                        width: 80.0,
                      ),
                      Padding( padding: const EdgeInsets.only(left: 10.0), child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Delícias da Fer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Culinária Artesanal'),
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
              padding: const EdgeInsets.only(left: 20.0, top: 20.00, right: 20.0, bottom: 10.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 8.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      (MaterialPageRoute(
                        builder: (context) => Restaurante(),
                      )),
                    );
                  },
                  child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                    children: [
                      Image.asset(
                        "assets/images/150/Group1.png",
                        width: 80.0,
                      ),
                      Padding( padding: const EdgeInsets.only(left: 10.0), child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ORISP', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Restaurante'),
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
              padding: const EdgeInsets.only(left: 20.0, top: 20.00, right: 20.0, bottom: 10.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 8.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      (MaterialPageRoute(
                        builder: (context) => Restaurante(),
                      )),
                    );
                  },
                  child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                    children: [
                      Image.asset(
                        "assets/images/150/Group2.png",
                        width: 80.0,
                      ),
                      Padding( padding: const EdgeInsets.only(left: 10.0), child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('MOONSHINE', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Bar e Restaurant'),
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
              padding: const EdgeInsets.only(left: 20.0, top: 20.00, right: 20.0, bottom: 10.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 8.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      (MaterialPageRoute(
                        builder: (context) => Restaurante(),
                      )),
                    );
                  },
                  child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                    children: [
                      Image.asset(
                        "assets/images/150/Group3.png",
                        width: 80.0,
                      ),
                      Padding( padding: const EdgeInsets.only(left: 10.0), child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Smart', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Kitchen'),
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
              padding: const EdgeInsets.only(left: 20.0, top: 20.00, right: 20.0, bottom: 10.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 8.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      (MaterialPageRoute(
                        builder: (context) => Restaurante(),
                      )),
                    );
                  },
                  child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
                    children: [
                      Image.asset(
                        "assets/images/150/Group4.png",
                        width: 80.0,
                      ),
                      Padding( padding: const EdgeInsets.only(left: 10.0), child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Goichi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Sushi · House'),
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
    );
  }
}