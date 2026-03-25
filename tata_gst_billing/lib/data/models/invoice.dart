class Product {
  final String id;
  final String name;
  final double price;
  final double gstRate;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.gstRate,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'],
    name: json['name'],
    price: json['price'],
    gstRate: json['gstRate'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'price': price,
    'gstRate': gstRate,
  };
}

class Invoice {
  final String id;
  final String date;
  final List<Product> items;
  final double total;

  Invoice({
    required this.id,
    required this.date,
    required this.items,
    required this.total,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
    id: json['id'],
    date: json['date'],
    items: (json['items'] as List)
        .map((item) => Product.fromJson(item))
        .toList(),
    total: json['total'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'date': date,
    'items': items.map((e) => e.toJson()).toList(),
    'total': total,
  };
}
