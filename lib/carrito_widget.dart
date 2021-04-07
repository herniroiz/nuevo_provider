import 'package:flutter/material.dart';
import 'package:ejemplo_provider/item.dart';
import 'package:ejemplo_provider/modelo/carrito.dart';
import 'package:provider/provider.dart';

class CarritoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<Carrito>(
        builder: (context, estado, child) => Scaffold(
          appBar: AppBar(
            title: Text('CARRITO DE COMPRAS'),
          ),
          body: Stack(
            children: [
              ListView.builder(
                itemCount: estado.carrito.length,
                itemBuilder: (context, index) => Item(estado.carrito[index]),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Total(),
              )
            ],
          ),
        ),
      );
}

class Total extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    Consumer<Carrito>(
      builder: (context, estado, child) =>
          Text('Total: ' + estado.precioTotal.toString()),
    );
}
