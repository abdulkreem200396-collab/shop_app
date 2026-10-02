import 'package:flutter/material.dart';

import '../data/products_data.dart';

import '../widgets/product_list_item.dart';

import 'products_grid_screen.dart';

class ProductsListScreen
    extends StatelessWidget {
  const ProductsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.grid_view,
            ),

            onPressed: () {
              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      const ProductsGridScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(
          16,
        ),

        child: ListView.builder(
          itemCount: products.length,

          itemBuilder:
              (context, index) {
                return ProductListItem(
                  product:
                      products[index],
                );
              },
        ),
      ),
    );
  }
}
