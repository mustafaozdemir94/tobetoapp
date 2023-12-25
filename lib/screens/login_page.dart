import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tobetoapp/main.dart';
// ignore: unused_import
import 'package:tobetoapp/providers/menu_provider.dart';
// ignore: unused_import
import 'package:tobetoapp/providers/users_data_provider.dart';
import 'package:tobetoapp/screens/home_screen.dart';

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
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/im_background.png'),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 240,
              ),
              Center(
                child: Container(
                  width: 350,
                  height: 410,
                  //dikkat
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
                            Image.asset('assets/login_banner.png'),
                          ],
                        ),
                      ),
                      const userTextField(),
                      const passwordTextField(),
                      const loginpageButtonLogin(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const loginpageButtonForgetPass(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

// ignore: camel_case_types
class loginpageButtonForgetPass extends StatelessWidget {
  const loginpageButtonForgetPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Parolamı Unuttum",
        style: GoogleFonts.quicksand(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }
}

// ignore: camel_case_types
class loginpageButtonLogin extends StatelessWidget {
  const loginpageButtonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: buttonColor,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(285, 40),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      child: Text(
        'GİRİŞ YAP',
        style: GoogleFonts.quicksand(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );
  }
}

// ignore: camel_case_types
class passwordTextField extends StatelessWidget {
  const passwordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            labelStyle: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold, color: Colors.black45),
            labelText: 'Parola',
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class userTextField extends StatelessWidget {
  const userTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            labelStyle: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold, color: Colors.black45),
            labelText: 'Kullanıcı Kodu',
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
/*class bodyItems extends StatelessWidget {
  const bodyItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/im_background.png'),
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
    );
  }
}
*/
// ignore: camel_case_types

