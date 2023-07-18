import 'package:cloth_selling_app/models/cart.dart';
import 'package:cloth_selling_app/models/second_product.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
 late ClothModel cloth;
   late CartModel cart;

  MyStore() {
    cloth = ClothModel();
    cart = CartModel();
    cart.cloth = cloth;
  }
}
