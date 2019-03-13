import 'package:flutter/material.dart';
import 'menu.dart';
import 'dart:async';
String inputA;
String inputC;
class PaginaActualizar extends StatefulWidget{
  @override
  _PaginaActualizar createState () => new _PaginaActualizar();
}

class _PaginaActualizar extends State<PaginaActualizar> {
  editar(posicion) async {
    showDialog(context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text("Editar"),

        content: TextField(
          controller: _controllerA,
          onChanged: (String value){
            inputA = value;
          },
        ),
        actions: <Widget>[
          FlatButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.pop(context);
              }),
          FlatButton(
            child: Text("Actualizar"),
            onPressed: (){
              for(int i=0;i < Alumnos.length;i++){
                  if(Alumnos[i].toString() == posicion) {
                    Alumnos[i] = inputA;
                  }
              }
            },
          )
        ],
      );
    });
  }
  editar2(valorC,valorA) async {
    showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Editar"),

            content: TextField(
              controller: _controllerC,
              onChanged: (String value){
                inputC = value;
              },
            ),
            actions: <Widget>[
              FlatButton(
                  child: const Text('Cancelar'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              FlatButton(
                child: Text("Actualizar"),
                onPressed: (){
                  for(int i=0;i < Calificaciones.length;i++){
                    if(Calificaciones[i] == valorC && Alumnos[i].toString() == valorA){
                      Calificaciones[i] = inputC;
                    }
                  }
                },
              )
            ],
          );
        });
  }

  final TextEditingController _controllerA = new TextEditingController();
  final TextEditingController _controllerC = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Actualizar"),),
      body: ListView.builder(
          itemCount: Alumnos.length,
          itemBuilder: (context, i) {
            return ListTile(
                title: Text(Alumnos [i]),
                subtitle: Text(Calificaciones [i]),
                onTap: () async {
                     await editar2(Calificaciones [i],Alumnos[i]);
                     setState(() {
                       _controllerC.text = Calificaciones [i];
                     });
                     await editar(Alumnos[i]);
                     setState(() {
                       _controllerA.text = Alumnos[i];
                     });

                }
            );
          }
      ),
    );
  }
}