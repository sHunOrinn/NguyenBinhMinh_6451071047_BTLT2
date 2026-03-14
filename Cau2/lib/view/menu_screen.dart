import 'package:flutter/material.dart';
import '../widget/food_card.dart';

// Model món ăn (đặt ngay trong file này)
class Food {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  const Food({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  // Danh sách món ăn
  static const List<Food> menuItems = [
    Food(
      name: 'Phở Bò',
      description: 'Phở Bò Đặc Biệt',
      price: 65000,
      imageUrl: 'https://images.unsplash.com/photo-1591814468924-caf88d1232e1?w=300',
    ),
    Food(
      name: 'Bún Chả',
      description: 'Bún Chả Hà Nội',
      price: 55000,
      imageUrl: 'https://images.unsplash.com/photo-1559314809-0d155014e29e?w=300',
    ),
    Food(
      name: 'Cơm Tấm',
      description: 'Cơm Tấm Sườn Bì Chả',
      price: 50000,
      imageUrl: 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=300',
    ),
    Food(
      name: 'Bánh Mì',
      description: 'Bánh Mì Thịt Nướng',
      price: 35000,
      imageUrl: 'https://images.unsplash.com/photo-1591181520189-abcb0735c65d?w=300',
    ),
    Food(
      name: 'Gỏi Cuốn',
      description: 'Gỏi Cuốn Tôm Thịt',
      price: 40000,
      imageUrl: 'https://images.unsplash.com/photo-1574484284002-952d92456975?w=300',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DANH SÁCH MÓN ĂN - Nguyễn Bình Minh - 6451071047',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return FoodCard(food: menuItems[index]);
        },
      ),
    );
  }
}