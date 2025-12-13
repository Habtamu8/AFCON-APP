import 'package:afcon_app/models/leaderboard_model.dart';
import 'package:afcon_app/widgets/leaderbaord_tile.dart';
import 'package:flutter/material.dart';


class LeaderboardScreen extends StatelessWidget {
  LeaderboardScreen({super.key});

  final List<LeaderboardUser> users = [
    LeaderboardUser(username: "Natty", points: 12),
    LeaderboardUser(username: "Rediet", points: 10),
    LeaderboardUser(username: "Eyosiyas", points: 9),
    LeaderboardUser(username: "Leul", points: 7),
    LeaderboardUser(username: "Habtamu", points: 6),
    LeaderboardUser(username: "Dave", points: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: const Color.fromARGB(255, 9, 83, 11),
        title: const Text("Leaderboard" , style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFF4F4F4),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return LeaderboardTile(
              rank: index + 1,
              user: users[index],
            );
          },
        ),
      ),
    );
  }
}
