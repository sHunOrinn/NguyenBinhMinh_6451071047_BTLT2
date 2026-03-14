import 'package:flutter/material.dart';
import '../widget/product_item.dart';

// Model Product
class Product {
  final String name;
  final double price;
  final String imageUrl;
  final double rating;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.rating = 4.5,
  });
}

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  // Danh sách 6 sản phẩm
  static const List<Product> products = [
    Product(
      name: 'Giày Chạy Bộ Nam',
      price: 950000,
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400',
      rating: 4.5,
    ),
    Product(
      name: 'Áo Thun Tập Luyện',
      price: 320000,
      imageUrl: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400',
      rating: 4.5,
    ),
    Product(
      name: 'Bóng Đá Thể Thao',
      price: 510000,
      imageUrl: 'https://images.unsplash.com/photo-1614632537197-38a17061c2bd?w=400',
      rating: 4.5,
    ),
    Product(
      name: 'Bóng Đá Thể Thao',
      price: 415000,
      imageUrl: 'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400',
      rating: 4.5,
    ),
    Product(
      name: 'Mũ Lưỡi Trai',
      price: 185000,
      imageUrl: 'https://images.unsplash.com/photo-1588850561407-ed78c282e89b?w=400',
      rating: 4.5,
    ),
    Product(
      name: 'Vớ Thể Thao Cao Cấp',
      price: 95000,
      imageUrl: 'https://images.unsplash.com/photo-1586350977771-b3b0abd50c82?w=400',
      rating: 4.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Nguyễn Binh Minh - 6451071047',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 cột
          childAspectRatio: 0.75, // Tỉ lệ chiều rộng/cao
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: products.map((product) {
            return ProductItem(product: product);
          }).toList(),
        ),
      ),
    );
  }
}