import 'package:flutter/material.dart';
import 'menu.dart';
class PaginaVisualizar extends StatefulWidget{
  @override
  _PaginaVisualizar createState () => new _PaginaVisualizar();
}

class _PaginaVisualizar extends State<PaginaVisualizar> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Visualizar"),),
      body: ListView.builder(
          itemCount: Alumnos.length,
          itemBuilder: (context,i){
            return ListTile(
                title: Text(Alumnos [i]),
                subtitle: Text(Calificaciones [i]),
            );
          }
      ),
      );
  }
}