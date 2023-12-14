import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tobetoapp/main.dart';
import 'package:tobetoapp/providers/menu_provider.dart';
import 'package:tobetoapp/providers/users_data_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: CircleAvatar(
                    backgroundColor: buttonColor,
                    radius: 50,
                    backgroundImage: const AssetImage('assets/user6.png'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Center(
                        child: Text(' ${users[index].name} ${users[index].surname}'),
                      ),
                      subtitle: Center(child: Text(' ${users[index].grade} ${users[index].gradeId}')),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: menuNames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(menuNames[index]),
                  onTap: () {},
                );
              },
            ),
            const SizedBox(
              height: 150,
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/ic_tobeto.png'), fit: BoxFit.cover),
                  ),
                ),
                const Text("Tobeto 2023"),
              ],
            )
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: NetworkImage('https://i.ibb.co/cFkp2Qp/background2.png'),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 240,
            ),
            Center(
              child: Expanded(
                child: Container(
                  width: 350,
                  height: 410,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://i.ibb.co/cTj45mG/tobete-home.png',
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.black45),
                              ),
                              prefixIcon: const Icon(Icons.person_2_outlined),
                              border: const OutlineInputBorder(),
                              labelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.bold, color: Colors.black45),
                              labelText: 'Kullanıcı Kodu',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                        child: SizedBox(
                          child: TextField(
                            style: GoogleFonts.tinos(fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.black45),
                              ),
                              prefixIcon: const Icon(Icons.lock_outline),
                              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                              border: const OutlineInputBorder(),
                              labelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.bold, color: Colors.black45),
                              labelText: 'Parola',
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: buttonColor,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: const Size(285, 40),
                        ),
                        onPressed: () {},
                        child: Text(
                          'GİRİŞ YAP',
                          style: GoogleFonts.quicksand(fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Parolamı Unuttum",
                          style: GoogleFonts.quicksand(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






/* const Expanded(
                        child: DrawerHeader(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/6.png'),
                              //fit: BoxFit.contain,
                            ),
                          ),
                          child: Text(""),
                        ),
                      ), */