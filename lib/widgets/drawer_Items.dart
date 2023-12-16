// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:tobetoapp/main.dart';
import 'package:tobetoapp/providers/menu_provider.dart';
import 'package:tobetoapp/providers/users_data_provider.dart';
import 'package:tobetoapp/screens/calendar_screen.dart';
import 'package:tobetoapp/screens/catalog_screen.dart';
import 'package:tobetoapp/screens/home_screen.dart';
import 'package:tobetoapp/screens/login_page.dart';
import 'package:tobetoapp/screens/profil_screen.dart';
import 'package:tobetoapp/screens/reviews_screen.dart';

class drawerItems extends StatelessWidget {
  const drawerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(122, 68, 181, 1),
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
                onTap: () {
                  _navigateToPage(context, menuNames[index]);
                },
              );
            },
          ),
          const SizedBox(
            height: 100,
          ),
          const Center(child: Text("Tobeto 2023"))
        ],
      ),
    );
  }
}

// ignore: unused_element
void _navigateToPage(BuildContext context, String pageName) {
  switch (pageName) {
    case 'Anasayfa':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
      break;
    case 'Değerlendirmeler':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ReviewsScreen()),
      );
      break;
    case 'Profilim':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilScreen()),
      );
      break;
    case 'Katalog':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CatalogScreen()),
      );
      break;
    case 'Takvim':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CalendarScreen()),
      );
      break;
    case 'Çıkış Yap':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
      break;
  }
}
