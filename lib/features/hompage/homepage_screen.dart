import 'package:afcon_app/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        bgcolor: const Color.fromARGB(255, 9, 83, 11),
        showmenuItem: true,
        title: Text("Welcome," ,style: TextStyle(color: Colors.white),),
         action: [
          Icon(Icons.doorbell ,color: Colors.white)
         ],
      ),

      body: SingleChildScrollView(),

       bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard), label: "Leaderboard"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}