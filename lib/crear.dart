import 'package:flutter/material.dart';
import 'menu.dart';
class PaginaCrear extends StatefulWidget{
  @override
  _PaginaCrear createState () => new _PaginaCrear();
}

class _PaginaCrear extends State<PaginaCrear> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Crear"),),
        body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerA = new TextEditingController();
  final TextEditingController _controllerC = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Nombre del Alumno"),
          TextFormField(
            controller: _controllerA,
            validator: (value) {
              if (value.isEmpty) {
                return 'Ingrese un nombre';
              }else{
                Alumnos.add(value);
                _controllerA.clear();
              }
            },
          ),
          Text("Calificacion"),
          TextFormField(
            controller: _controllerC,
            validator: (value) {
              if (value.isEmpty) {
                return 'Ingrese una calificación';
              }else{
                Calificaciones.add(value);
                _controllerC.clear();
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold
                      .of(context)
                      .showSnackBar(SnackBar(content: Text('Creando Alumno')));
                }
              },

              child: Text('Crear'),
            ),
          ),
        ],
      ),
    );
  }
}
