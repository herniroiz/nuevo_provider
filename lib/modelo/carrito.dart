import 'package:flutter/cupertino.dart';
import 'package:nuevo_provider/mocks/productos.dart';
import 'package:nuevo_provider/modelo/producto.dart';

class Carrito extends ChangeNotifier{
  List<Producto> _carrito = [];

  double _precioTotal = 0;

  List<Producto> getProductos() => _carrito;

  double getPrecioTotal() => _precioTotal;

  void agregarAlCarrito(Producto producto) {
    _carrito.add(producto);
    _precioTotal += producto.precio;
    notifyListeners();
  }

  void eliminarProductoDelCarrito(Producto producto) {
    _carrito.removeWhere((element) => element == producto);
  }
}
