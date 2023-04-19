// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
    Products({
        this.id,
        this.name,
        this.qty,
        this.price,
        this.isActive,
        this.maxOrderQty,
    });

    int? id;
    String? name;
    int? qty;
    int? price;
    bool? isActive;
    int? maxOrderQty;

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        name: json["name"],
        qty: json["qty"],
        price: json["price"],
        isActive: json["is_active"],
        maxOrderQty: json["max_order_qty"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "qty": qty,
        "price": price,
        "is_active": isActive,
        "max_order_qty": maxOrderQty,
    };
}
