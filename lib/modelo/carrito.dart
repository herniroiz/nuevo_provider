import 'package:flutter/cupertino.dart';
import 'package:ejemplo_provider/mocks/productos.dart';
import 'package:ejemplo_provider/modelo/producto.dart';

class Carrito extends ChangeNotifier{
  List<Producto> _carrito = [];

  double _precioTotal = 0;

  // Es lo mismo hacer esto:
  // List<Producto> getCarrito() => _carrito;
  // Que esto: 
  // List<Producto> get carrito => _carrito;
  // pero nos va a permitir acceder a la variable como un atributo y no como un metodo
  // entonces vamos a poder usar estado.carrito en vez de estado.getCarrito()
  
  List<Producto> get carrito => _carrito;

  double get precioTotal => _precioTotal;

  void agregarAlCarrito(Producto producto) {
    _carrito.add(producto);
    _precioTotal += producto.precio;
    notifyListeners();
  }

  void eliminarProductoDelCarrito(Producto producto) {
    _carrito.removeWhere((element) => element == producto);
    _precioTotal -= producto.precio;
    notifyListeners();
  }
}
