import 'package:ecommerce_ui/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network(productModel.imageUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              productModel.title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            Text(
              productModel.description,
              style: const TextStyle(
                fontSize: 14,
              ),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${productModel.price}\$',
                  style: const TextStyle(color: Colors.grey),
                  maxLines: 1,
                ),
                const Row(
                  children: [
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
