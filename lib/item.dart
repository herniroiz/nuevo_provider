import 'package:flutter/material.dart';
import 'package:ejemplo_provider/modelo/carrito.dart';
import 'package:ejemplo_provider/modelo/producto.dart';
import 'package:provider/provider.dart';

class Item extends StatelessWidget {
  Item(this.producto);

  final Producto producto;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(producto.nombre),
              Text(producto.precio.toString()),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          ElevatedButton(
              onPressed: () =>
                  Provider.of<Carrito>(context, listen: false).agregarAlCarrito(producto),
              child: Text('AGREGAR')),
        ],
      );
}
