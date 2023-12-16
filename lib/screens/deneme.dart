import 'package:flutter/material.dart';
import 'package:tobetoapp/widgets/drawer_Items.dart';

class Deneme extends StatefulWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DenemeState createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfa"),
        flexibleSpace: Container(
          height: height,
          width: widht,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color.fromRGBO(131, 58, 199, 1), Color.fromRGBO(107, 60, 211, 1)],
            ),
          ),
        ),
      ),
      drawer: const drawerItems(),
      body: Center(
        child: Column(
          children: [
            Container(
              height: height * .25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/topImage.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
