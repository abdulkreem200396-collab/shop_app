import '../models/product.dart';

final List<Product> products = [
  Product(
    name: "Nike Air Max",

    price: 120,

    brand: "Nike",

    category: "Shoes",

    description: "The Nike Air Max delivers all-day comfort with a modern design. Perfect for everyday wear, it combines style and performance in one shoe.",

    image: "assets/img/nike.png",

    inStock: true,
  ),

  Product(
    name: "Travel Backpack",

    price: 60,

    brand: "Urban Gear",

    category: "Bags",

    description: "A practical backpack with multiple compartments for daily travel.",

    image: "assets/img/backpack.png",

    inStock: true,
  ),

  Product(
    name: "Wireless Headphones",

    price: 199,

    brand: "SoundMax",

    category: "Electronics",

    description: "Comfortable wireless headphones with clear sound and long battery life.",

    image: "assets/img/headphones.png",

    inStock: true,
  ),

  Product(
    name: "Smart Watch",

    price: 299,

    brand: "TechTime",

    category: "Wearables",

    description: "A modern smart watch for notifications, activity tracking, and daily use.",

    image: "assets/img/watch.png",

    inStock: true,
  ),

  Product(
    name: "Sunglasses",

    price: 90,

    brand: "Vision",

    category: "Accessories",

    description: "Lightweight sunglasses with a simple design for sunny days.",

    image: "assets/img/glasses.png",

    inStock: true,
  ),

  Product(
    name: "Casual Shoes",

    price: 85,

    brand: "StreetStep",

    category: "Shoes",

    description: "Comfortable casual shoes designed for daily walking and relaxed outfits.",

    image: "assets/img/shoes.png",

    inStock: false,
  ),
];
