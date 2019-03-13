import 'package:flutter/material.dart';
import 'menu.dart';

class PaginaEliminar extends StatefulWidget{
  @override
  _PaginaEliminar createState () => new _PaginaEliminar();
}

class _PaginaEliminar extends State<PaginaEliminar> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Eliminar"),),
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
          Text("Nombre del Alumno a eliminar"),
          TextFormField(
            controller: _controllerA,
            validator: (value) {
              if (value.isEmpty) {
                return 'Ingrese un nombre';
              }else{
                    Alumnos.remove(value);
                    _controllerA.clear();
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
                      .showSnackBar(SnackBar(content: Text('Eliminando Alumno')));
                }
              },

              child: Text('Eliminar'),
            ),
          ),
        ],
      ),
    );
  }
}