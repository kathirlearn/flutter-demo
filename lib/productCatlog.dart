import 'package:flutter/material.dart';
// productCatlog
class Product{
  final String title;
  final String subtitle;
  final String imageUrl;

  Product({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
 });
}

List<Product> products = [
  Product(
    title: 'Product 1',
    subtitle: 'Subtitle 1',
    imageUrl: 'https://picsum.photos/250?image=237',
  ),
  Product(
    title: 'Product 2',
    subtitle: 'Subtitle 2',
    imageUrl: 'https://picsum.photos/250?image=238',
  ),
  Product(
    title: 'Product 3',
    subtitle: 'Subtitle 3',
    imageUrl: 'https://picsum.photos/250?image=239',
  ),
  // Add more sample products
];

class ProductCatlog extends StatelessWidget {
  const ProductCatlog({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2), // Number of columns
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(products[index].imageUrl, width:150, height:150),
              Text(products[index].title),
              Text(products[index].subtitle),
            ],
          ),
        );
      },
    );
  }
}
