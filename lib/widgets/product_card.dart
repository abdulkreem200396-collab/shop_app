import 'package:flutter/material.dart';

import '../models/product.dart';

import '../screens/product_details_screen.dart';

class ProductCard
    extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,

    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius:
          BorderRadius.circular(18),

      onTap: () {
        Navigator.push(
          context,

          MaterialPageRoute(
            builder: (context) =>
                ProductDetailsScreen(
                  product: product,
                ),
          ),
        );
      },

      child: Container(
        padding: const EdgeInsets.all(
          12,
        ),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius:
              BorderRadius.circular(18),

          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(0.05),

              blurRadius: 10,

              offset: const Offset(
                0,
                4,
              ),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [
            Expanded(
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  color: const Color(
                    0xffF3F4F6,
                  ),

                  borderRadius:
                      BorderRadius.circular(
                        14,
                      ),
                ),

                child: Image.asset(
                  product.image,

                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              product.name,

              maxLines: 1,

              overflow:
                  TextOverflow.ellipsis,

              style: const TextStyle(
                fontSize: 15,

                fontWeight:
                    FontWeight.w600,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              "\$${product.price.toInt()}",

              style: const TextStyle(
                fontSize: 17,

                color: Color(
                  0xff2563EB,
                ),

                fontWeight:
                    FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
