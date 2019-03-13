import 'package:flutter/material.dart';
import 'visualizar.dart';
import 'crear.dart';
import 'actualizar.dart';
import 'eliminar.dart';
List Alumnos = ['Luis','Juan'];
List Calificaciones = ['10','10'];
class PaginaMenu extends StatefulWidget{
  @override
  _PaginaMenu createState () => new _PaginaMenu();
}

class _PaginaMenu extends State<PaginaMenu>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: Text("Calificaciones"),),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        /*
        Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img/logo.png"),
         */
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      child:
                      RaisedButton(
                        color: Colors.blue,
                        onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder:(BuildContext)=> PaginaVisualizar ())
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 130,
                        child: Center(
                          child: Text("Visualizar", style: TextStyle(fontSize: 20, color:Colors.white)),
                        ),
                      ),
                    ),
                      padding: const EdgeInsets.all(10.0),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      child:
                      RaisedButton(
                        color: Colors.blue,
                        onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder:(BuildContext)=> PaginaCrear ())
                        );
                      },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 130,
                          child: Center(
                            child: Text("Crear", style: TextStyle(fontSize: 20, color:Colors.white)),
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      child:
                      RaisedButton(
                        color: Colors.blue,
                        onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder:(BuildContext)=> PaginaActualizar ())
                        );
                      },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 130,
                          child: Center(
                            child: Text("Actualizar", style: TextStyle(fontSize: 20, color:Colors.white)),
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      child:
                      RaisedButton(
                        color: Colors.blue,
                        onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder:(BuildContext)=> PaginaEliminar ())
                        );
                      },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 130,
                          child: Center(
                            child: Text("Eliminar", style: TextStyle(fontSize: 20, color:Colors.white)),
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

