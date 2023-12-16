import 'package:flutter/material.dart';
import 'package:tobetoapp/widgets/drawer_Items.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ReviewsScreenState createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Değerlendirmeler")),
      ),
      drawer: const drawerItems(),
    );
  }
}
