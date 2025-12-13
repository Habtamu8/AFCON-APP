import 'package:afcon_app/features/hompage/home_screen.dart';
import 'package:afcon_app/features/profile/profile.dart';
import 'package:afcon_app/features/scoreboard/leaderboard_screen.dart';
import 'package:afcon_app/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Stack(
                children: [
                  // Positioned(top: -100 ,right: -250, child: CircularContainerWidget(padding:const EdgeInsets.all(0), backgroundColor: MaColors.whiteColors.withOpacity(0.01))),
                  Positioned(
                    top: -40,
                    right: 0,
                    bottom: -40,
                    left: 0,
                    child:
                        Image(image: AssetImage("")),
                  ),
                  // Positioned(top: 100 ,right: -150, child: CircularContainerWidget(padding:const EdgeInsets.all(0), backgroundColor: MaColors.whiteColors.withOpacity(0.1))),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                ListTileFormat(
                  title: "Home",
                  icon: Icons.home,
                  ontap: () => Get.to(() => HomeScreen()),
                ),
                ListTileFormat(
                    title: "Leaderboard ",
                    icon: Icons.leaderboard,
                    ontap: () => Get.to(() => LeaderboardScreen())),
                ListTileFormat(
                    title: "Profile",
                    icon: Icons.person,
                    ontap: () =>
                    Get.to(() => ProfileScreen())),
                       
              ]
            ),
          )
        ],
      ),
    );
  }
}
