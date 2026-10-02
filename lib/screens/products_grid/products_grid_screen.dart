import 'package:flutter/material.dart';

import '../data/products_data.dart';
import '../widgets/product_card.dart';
import 'products_list_screen.dart';

class ProductsGridScreen
    extends StatelessWidget {
  const ProductsGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop"),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),

            onPressed: () {},
          ),

          IconButton(
            icon: const Icon(
              Icons.view_list,
            ),

            onPressed: () {
              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      const ProductsListScreen(),
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

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [
            const Text(
              "Featured Products",

              style: TextStyle(
                fontSize: 24,

                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: GridView.builder(
                itemCount:
                    products.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,

                      crossAxisSpacing:
                          15,

                      mainAxisSpacing:
                          15,

                      childAspectRatio:
                          0.65,
                    ),

                itemBuilder:
                    (context, index) {
                      return ProductCard(
                        product:
                            products[index],
                      );
                    },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
