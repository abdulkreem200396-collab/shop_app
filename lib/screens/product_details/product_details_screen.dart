import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetailsScreen
    extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({
    super.key,

    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffF8FAFF,
      ),

      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),

          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "Product Details",
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons
                  .shopping_cart_outlined,
            ),

            onPressed: () {},
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
            // Image Section

            Container(
              height: 230,

              width: double.infinity,

              decoration: BoxDecoration(
                color: const Color(
                  0xffF1F5F9,
                ),

                borderRadius:
                    BorderRadius.circular(
                      18,
                    ),
              ),

              child: Image.asset(
                product.image,

                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 18),

            // Product Name
            Text(
              product.name,

              style: const TextStyle(
                fontSize: 22,

                fontWeight:
                    FontWeight.w700,
              ),
            ),

            const SizedBox(height: 6),

            // Price
            Text(
              "\$${product.price.toInt()}",

              style: const TextStyle(
                fontSize: 20,

                color: Color(
                  0xff2563EB,
                ),

                fontWeight:
                    FontWeight.w700,
              ),
            ),

            const SizedBox(height: 18),

            const Text(
              "Description",

              style: TextStyle(
                fontSize: 16,

                fontWeight:
                    FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              product.description,

              style: TextStyle(
                fontSize: 14,

                color: Colors
                    .grey
                    .shade600,

                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            detailRow(
              "Brand",

              product.brand,
            ),

            detailRow(
              "Category",

              product.category,
            ),

            detailRow(
              "In Stock",

              product.inStock
                  ? "Yes"
                  : "No",
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              height: 52,

              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Added to Cart",
                      ),
                    ),
                  );
                },

                child: const Text(
                  "Add to Cart",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailRow(
    String title,
    String value,
  ) {
    return Container(
      padding:
          const EdgeInsets.symmetric(
            vertical: 12,
          ),

      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE5E7EB),
          ),
        ),
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceBetween,

        children: [
          Text(
            title,

            style: TextStyle(
              color:
                  Colors.grey.shade600,

              fontSize: 14,
            ),
          ),

          Text(
            value,

            style: const TextStyle(
              fontSize: 14,

              fontWeight:
                  FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
