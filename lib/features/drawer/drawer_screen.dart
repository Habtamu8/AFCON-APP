import 'package:afcon_app/features/hompage/home_screen.dart';
import 'package:afcon_app/features/profile/profile.dart';
import 'package:afcon_app/features/scoreboard/leaderboard_screen.dart';
import 'package:afcon_app/widgets/list_tile.dart';
import 'package:flutter/material.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 9, 83, 11),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -40,
                  right: 0,
                  bottom: -40,
                  left: 0,
                  child: Image(
                    image: AssetImage("assets/images/AFCON logo.png"),
                  ),
                ),
               
               ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                ListTileFormat(
                  title: "Home",
                  icon: Icons.home,
                  ontap: () {
                    Navigator.pop(context); // close drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => HomeScreen()),
                    );
                  },
                ),
                ListTileFormat(
                  title: "Leaderboard ",
                  icon: Icons.leaderboard,
                  ontap: () {
                    Navigator.pop(context); // close drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LeaderboardScreen()),
                    );
                  },
                ),
                ListTileFormat(
                  title: "Profile",
                  icon: Icons.person,
                  ontap: () {
                    Navigator.pop(context); // close drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProfileScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
