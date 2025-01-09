import 'package:flutter/material.dart';
import '../controllers/data_controller.dart';
import '../models/user_model.dart';

class ProfileScreen extends StatelessWidget {
  final DataController controller = DataController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: controller.loadUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error loading user data'));
          }
          final user = snapshot.data as User;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${user.name}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Email: ${user.email}', style: TextStyle(fontSize: 18)),
              ],
            ),
          );
        },
      ),
    );
  }
}
