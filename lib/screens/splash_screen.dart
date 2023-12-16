import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tobetoapp/main.dart';
import 'package:tobetoapp/screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/im_background.png'),
          ),
        ),
        child: const Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              welcomeText(),
              subtitleText(),
              SizedBox(
                height: 200,
              ),
              splashloginButton(),
              SizedBox(
                height: 10,
              ),
              splashsingupButton(),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class splashsingupButton extends StatelessWidget {
  const splashsingupButton({
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(285, 40),
      ),
      onPressed: () {},
      child: Text(
        'KAYIT OL',
        style: GoogleFonts.quicksand(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );
  }
}

// ignore: camel_case_types
class splashloginButton extends StatelessWidget {
  const splashloginButton({
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(285, 40),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
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
class welcomeText extends StatelessWidget {
  const welcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 85, 0),
      child: Text(
        "HOŞGELDİNİZ",
        style: GoogleFonts.quicksand(
          fontWeight: FontWeight.bold,
          fontSize: 45,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class subtitleText extends StatelessWidget {
  const subtitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 85, 0),
      child: Text(
        "Tobeto Çevrimçi Kurs Sistemi",
        style: GoogleFonts.quicksand(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
