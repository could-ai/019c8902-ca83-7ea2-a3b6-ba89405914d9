import '../models/product.dart';

class CartService {
  static final CartService _instance = CartService._internal();

  factory CartService() {
    return _instance;
  }

  CartService._internal();

  final List<Product> _items = [];

  List<Product> get items => _items;

  void addToCart(Product product) {
    _items.add(product);
  }

  void removeFromCart(Product product) {
    _items.remove(product);
  }

  void clearCart() {
    _items.clear();
  }

  double get total => _items.fold(0, (sum, item) => sum + item.price);
}

final List<Product> dummyProducts = [
  const Product(
    id: 'p1',
    name: 'Sourdough Loaf',
    description: 'Classic artisanal sourdough bread with a crispy crust and soft, airy crumb. Fermented for 48 hours.',
    price: 6.50,
    imageUrl: 'https://images.unsplash.com/photo-1585476263060-655037f5163e?auto=format&fit=crop&q=80&w=800',
    category: 'Bread',
  ),
  const Product(
    id: 'p2',
    name: 'Chocolate Croissant',
    description: 'Buttery, flaky pastry filled with rich dark chocolate batons. Baked fresh every morning.',
    price: 3.75,
    imageUrl: 'https://images.unsplash.com/photo-1555507036-ab1f4038808a?auto=format&fit=crop&q=80&w=800',
    category: 'Pastry',
  ),
  const Product(
    id: 'p3',
    name: 'Blueberry Muffin',
    description: 'Moist muffin bursting with fresh blueberries and topped with a crunchy streusel.',
    price: 3.25,
    imageUrl: 'https://images.unsplash.com/photo-1607958996333-41aef7caefaa?auto=format&fit=crop&q=80&w=800',
    category: 'Pastry',
  ),
  const Product(
    id: 'p4',
    name: 'Red Velvet Cake',
    description: 'A slice of our famous red velvet cake with smooth cream cheese frosting.',
    price: 5.50,
    imageUrl: 'https://images.unsplash.com/photo-1586788680434-30d32443f858?auto=format&fit=crop&q=80&w=800',
    category: 'Cake',
  ),
  const Product(
    id: 'p5',
    name: 'Baguette',
    description: 'Traditional French baguette with a crisp crust and chewy interior.',
    price: 3.00,
    imageUrl: 'https://images.unsplash.com/photo-1597079910443-60c43fc4f752?auto=format&fit=crop&q=80&w=800',
    category: 'Bread',
  ),
  const Product(
    id: 'p6',
    name: 'Macarons (Box of 6)',
    description: 'Assorted french macarons including pistachio, raspberry, chocolate, and vanilla.',
    price: 12.00,
    imageUrl: 'https://images.unsplash.com/photo-1569864358642-9d1684040f43?auto=format&fit=crop&q=80&w=800',
    category: 'Sweets',
  ),
];
