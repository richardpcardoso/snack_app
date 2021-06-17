import 'package:flutter/material.dart';
import 'package:snack_app/screens/cadastrar.dart';
import 'package:snack_app/screens/dashboard.dart';
import 'package:snack_app/utils/componentes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  GlobalKey<FormState> cForm = GlobalKey<FormState>();

  bool _showPassword = false;

  Function validaEmpty = ((value){
    if(value.isEmpty){
      return "Este campo é requerido";
    }

    return null;
  });

  Widget _buildPasswordTextField() {
    return TextFormField(
      controller: _senhaController,
      validator: validaEmpty,
      obscureText: !this._showPassword,
      decoration: InputDecoration(
        hintText: 'Senha',
        filled: true,
        fillColor: Color(0xFFF6F7F4),
        labelStyle: TextStyle(color: Colors.black54),
        contentPadding: const EdgeInsets.only(left: 25.0, bottom: 8.0, top: 8.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 10.0),
          child: Icon(
            Icons.vpn_key,
            color: Colors.grey,
            size: 14.0,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: this._showPassword ? Colors.deepOrangeAccent : Colors.grey,
              size: 16.0,
            ),
            onPressed: () {
              setState(() => this._showPassword = !this._showPassword);
            },
          ),
        ),
      ),
    );
  }

  efetuarLogin() async{
    if(!cForm.currentState.validate())
      return;
    
    Navigator.pushReplacement(
        context,
        new MaterialPageRoute(
            builder: (BuildContext context) => Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('New contact'),
      // ),
      body: Form(
        key: cForm,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg/bg3.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo/logo-white.png",
                      width: 280.0,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        validator: validaEmpty,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          filled: true,
                          fillColor: Color(0xFFF6F7F4),
                          labelStyle: TextStyle(color: Colors.black54),
                          contentPadding: const EdgeInsets.only(left: 25.0, bottom: 8.0, top: 8.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 14.0, right: 10.0),
                            child: Icon(
                              Icons.alternate_email,
                              color: Colors.grey,
                              size: 14.0,
                            ),
                          ),
                        ),
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: _buildPasswordTextField()
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: (){
                                    Navigator.of(context).push(
                                      (MaterialPageRoute(
                                        builder: (context) => Cadastrar(),
                                      )),
                                    );
                                  },
                                  child:
                                  Padding(
                                      padding: const EdgeInsets.only(left: 18.0, top: 10.0, right: 18.0, bottom: 10.0),
                                      child: Text("Se cadastrar", style: TextStyle(fontSize: 16))
                                  ),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30.0),
                                              side: BorderSide(color: Colors.orange)
                                          )
                                      ),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                                      backgroundColor: MaterialStateProperty.all<Color>(Color(0x00000000)))),
                              ElevatedButton(
                                  onPressed: efetuarLogin,
                                  child:
                                  Padding(
                                      padding: const EdgeInsets.only(left: 18.0, top: 10.0, right: 10.0, bottom: 10.0),
                                      child: Row(
                                        children: [
                                          Text("Entrar   ", style: TextStyle(fontSize: 16)),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                            size: 16.0,
                                          ),
                                        ],
                                      )
                                  ),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30.0),
                                              side: BorderSide.none
                                          )
                                      ),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.orange))),
                            ]
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
