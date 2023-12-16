import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:tobetoapp/main.dart';
import 'package:tobetoapp/widgets/drawer_Items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
        title: const Center(
          child: Text("Anasayfa"),
        ),
      ),
      drawer: const drawerItems(),
    );
  }
}
