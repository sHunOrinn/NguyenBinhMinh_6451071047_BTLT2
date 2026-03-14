import 'package:flutter/material.dart';

class EditProfileButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const EditProfileButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: const Text(
        'Edit Profile',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}