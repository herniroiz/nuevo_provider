import 'package:flutter/material.dart';
import 'package:nuevo_provider/carrito_widget.dart';
import 'package:nuevo_provider/item.dart';
import 'package:nuevo_provider/mocks/productos.dart';
import 'package:nuevo_provider/modelo/carrito.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Carrito>(
      create: (context) => Carrito(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaginaPrincipal(),
      ),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Listado de productos'),
          actions: [TextButton(onPressed: () => 
            Navigator.push(context, MaterialPageRoute(builder: (context) => CarritoWidget()))
          , child: Text('Carrito', style: TextStyle(color: Colors.white),))],
        ),
        body: ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, index) => Item(productos[index]),
        ),
      );
}
