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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Image.asset('assets/login_banner.png')),
      endDrawer: const drawerItems(),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 250,
            child: const Column(
              children: [
                SizedBox(height: 75),
                Text(
                  "TOBETO'ya hoş geldin",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Kemal",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Yeni nesil öğrenme deneyimi ile Tobeto",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "kariyer yolculuğunda senin yanında!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Image.asset('assets/i_kodluyor.png'),
                ),
                const Text(
                  "Ücretsiz eğitimlerle,\ngeleceğin mesleklerinde\nsen de yerini al.\nAradığın  “İş”\nBurada!",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Column(
            children: [
              DefaultTabController(
                length: 4,
                child: TabBar(isScrollable: false, tabs: [
                  Tab(
                    child: Text("Başvurularım"),
                  ),
                  Tab(
                    child: Text("Eğitimlerim"),
                  ),
                  Tab(
                    child: Text("Duyuru ve Haberlerim"),
                  ),
                  Tab(
                    child: Text("Anketlerim"),
                  ),
                ]),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: 370,
            height: 150,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.20),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              border: const Border(
                left: BorderSide(
                  color: Color(0xFF076B34),
                  width: 10,
                ),
              ),
              color: Colors.white,
            ),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "İstanbul Kodluyor\nBilgilendirme",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.38,
                        decoration: const BoxDecoration(
                          color: Color(0xFF076B34),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Kabul Edildi",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: <Widget>[
                    Icon(
                      Icons.done,
                      color: Color(0xFF076B34),
                    ),
                    Text("İstanbul Kodluyor Başvuru Formu \nOnaylandı."),
                  ],
                ),
                const Row(
                  children: <Widget>[
                    Icon(
                      Icons.done,
                      color: Color(0xFF076B34),
                    ),
                    Text("İstanbul Kodluyor Belge Yükleme \nFormu Onaylandı."),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              width: 400,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Profilini Oluştur",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26)),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(350, 50),
                        backgroundColor: const Color.fromRGBO(152, 51, 250, 1),
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Text(
                      "Başla",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              width: 400,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Kendini Değerlendir",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26)),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(350, 50),
                        backgroundColor: const Color.fromRGBO(152, 51, 250, 1),
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Text(
                      "Başla",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              width: 400,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Öğrenmeye Başla",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26)),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(350, 50),
                        backgroundColor: const Color.fromRGBO(152, 51, 250, 1),
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Text(
                      "Başla",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
