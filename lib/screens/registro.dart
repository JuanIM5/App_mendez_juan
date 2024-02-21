import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  @override
  RegistroApp createState() => RegistroApp();
}

class RegistroApp extends State<Registro> {
  TextEditingController correo = TextEditingController();
  TextEditingController contrasena = TextEditingController();
  ///final firebase=FirebaseFirestore.instance;

  ///registroUsuario() async {
  ///  try{
  ///    await firebase.collection('Users').doc().set(
  ///      {
  ///        "Usuario": correo.text,
  ///        "Contraseña":contrasena.text
  ///      }
  ///    );
  ///  }
  ///  catch(e){
  ///    print('Error '+e.toString());
  ///  }
  ///}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 50, right: 10),
            child: TextField(
              ///USUARIO-CORREO
              controller: correo,
              decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                  hintText: 'Introduzca su correo',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: TextField(
              ///CONTRASEÑA
              controller: contrasena,
              decoration: InputDecoration(
                  labelText: 'Contraseña',
                  hintText: 'Introduzca su contraseña',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: (){
              print('Enviado');
              print(correo.text);
              correo.clear();
              print(contrasena.text);
              contrasena.clear();
              ///registroUsuario();
            },
            child: Text('Confirmar'),
          ),
          )
        ],
      )),
    );
  }
}
