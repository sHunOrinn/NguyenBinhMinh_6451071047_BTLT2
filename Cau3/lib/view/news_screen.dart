import 'package:flutter/material.dart';
import '../widget/news_card.dart';

// Model Article
class Article {
  final String title;
  final String description;
  final String imageUrl;

  const Article({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  // Danh sách 3 bài viết
  static const List<Article> articles = [
    Article(
      title: 'Article Title 1: Flutter is awesome!',
      description: 'Learn about cross-platform development with the latest news on Flutter framework updates and community tutorials.',
      imageUrl: 'https://images.unsplash.com/photo-1480714378408-67cf0d13bc1b?w=800',
    ),
    Article(
      title: 'Article Title 2: Local Coffee Shop Opens',
      description: 'The cozy new cafe, "The Daily Grind," offers local brews and a relaxing atmosphere for customers.',
      imageUrl: 'https://images.unsplash.com/photo-1442512595331-e89e73853f31?w=800',
    ),
    Article(
      title: 'Article Title 3: New Tech Gadgets',
      description: 'Discover the newest smartphones, smartwatches, and innovative devices hitting the market this week.',
      imageUrl: 'https://images.unsplash.com/photo-1468436139062-f60a71c5c892?w=800',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News - Nguyễn Bình Minh - 6451071047',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 12),
            // Hiển thị 3 bài viết
            ...articles.map((article) => NewsCard(article: article)),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}