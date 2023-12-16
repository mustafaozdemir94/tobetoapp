import 'package:flutter/material.dart';
import 'package:tobetoapp/widgets/drawer_Items.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Katalog")),
      ),
      drawer: const drawerItems(),
    );
  }
}
