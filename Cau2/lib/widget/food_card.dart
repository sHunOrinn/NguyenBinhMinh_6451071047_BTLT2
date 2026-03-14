import 'package:flutter/material.dart';
import '../view/menu_screen.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Hình ảnh món ăn
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                food.imageUrl,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey[300],
                    child: const Icon(Icons.restaurant, color: Colors.grey),
                  );
                },
              ),
            ),
            
            const SizedBox(width: 12),
            
            // Thông tin món ăn
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tên món
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Mô tả
                  Text(
                    food.description,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Giá
                  Text(
                    '${food.price.toStringAsFixed(0).replaceAllMapped(
                      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                      (Match m) => '${m[1]},',
                    )} VNĐ',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1976D2),
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