import 'package:flutter/material.dart';
import '../widget/profile_avatar.dart';
import '../widget/profile_info.dart';
import '../widget/edit_profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // DebugShowCheckedModeBanner: false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                print("button clicked");
              },
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                print("button clicked");
              },
          ),
        ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ProfileAvatar(
              imageUrl: 'https://i.pravatar.cc/300',
            ),
            
            const SizedBox(height: 24),
            
            const ProfileInfo(
              name: 'Nguyen Lan Huong',
              email: 'lanhuong.nguyen@example.com',
            ),

            const ProfileInfo(name: 'Nguyễn Bình Minh', email: '6451071047'),
            
            const SizedBox(height: 32),
            
            EditProfileButton(
              onPressed: () {
                // Xử lý khi nhấn nút Edit Profile
              },
            ),
          ],
        ),
      ),
    );
  }
}