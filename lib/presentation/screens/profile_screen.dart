import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../state/auth_controller.dart';

class ProfileScreen extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () {
              authController.currentUser.value = null;
              Get.offAllNamed('/');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () {
            final user = authController.currentUser.value;
            if (user == null) {
              return const Center(child: Text('No user logged in'));
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Full Name:', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
                Text(user.fullName, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 24),
                const Text('Email:', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
                Text(user.email, style: const TextStyle(fontSize: 20)),
              ],
            );
          },
        ),
      ),
    );
  }
}
