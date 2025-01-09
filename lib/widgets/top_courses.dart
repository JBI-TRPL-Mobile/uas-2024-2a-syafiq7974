import 'package:flutter/material.dart';

class TopCourses extends StatelessWidget {
  const TopCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey[200],
      child: const Center(
        child: Text(
          'Top Courses Section',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
