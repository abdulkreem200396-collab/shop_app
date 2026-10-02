import 'package:flutter/material.dart';

import '../models/product.dart';

import '../screens/product_details_screen.dart';

class ProductListItem
    extends StatelessWidget {
  final Product product;

  const ProductListItem({
    super.key,

    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
        margin: const EdgeInsets.only(
          bottom: 15,
        ),

        padding: const EdgeInsets.all(
          12,
        ),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius:
              BorderRadius.circular(18),

          boxShadow: [
            BoxShadow(
              color: Colors.black12,

              blurRadius: 8,
            ),
          ],
        ),

        child: Row(
          children: [
            Container(
              height: 90,

              width: 90,

              decoration: BoxDecoration(
                color: const Color(
                  0xffF1F5F9,
                ),

                borderRadius:
                    BorderRadius.circular(
                      15,
                    ),
              ),

              child: Image.asset(
                product.image,

                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                children: [
                  Text(
                    product.name,

                    style:
                        const TextStyle(
                          fontSize: 17,

                          fontWeight:
                              FontWeight
                                  .w600,
                        ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Text(
                    product.brand,

                    style: TextStyle(
                      color: Colors
                          .grey
                          .shade600,
                    ),
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  Text(
                    "\$${product.price.toInt()}",

                    style:
                        const TextStyle(
                          color: Color(
                            0xff2563EB,
                          ),

                          fontSize: 17,

                          fontWeight:
                              FontWeight
                                  .bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
