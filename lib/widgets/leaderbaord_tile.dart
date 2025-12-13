import 'package:afcon_app/models/leaderboard_model.dart';
import 'package:flutter/material.dart';


class LeaderboardTile extends StatelessWidget {
  final int rank;
  final LeaderboardUser user;

  const LeaderboardTile({
    super.key,
    required this.rank,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final bool isTopThree = rank <= 3;

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: isTopThree ? _topGradient(rank) : null,
        color: isTopThree ? null : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          _rankBadge(),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              user.username,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: isTopThree ? Colors.white : Colors.black87,
              ),
            ),
          ),
          _pointsBadge(isTopThree),
        ],
      ),
    );
  }

  Widget _rankBadge() {
    return CircleAvatar(
      radius: 18,
      backgroundColor: Colors.black.withOpacity(0.15),
      child: Text(
        "$rank",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _pointsBadge(bool isTopThree) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: isTopThree
            ? Colors.white.withOpacity(0.25)
            : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "${user.points} pts",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isTopThree ? Colors.white : Colors.black87,
        ),
      ),
    );
  }

  LinearGradient _topGradient(int rank) {
    switch (rank) {
      case 1:
        return const LinearGradient(
          colors: [Color(0xFFFFD700), Color(0xFFFFB300)], // Gold
        );
      case 2:
        return const LinearGradient(
          colors: [Color(0xFFC0C0C0), Color(0xFFB0B0B0)], // Silver
        );
      case 3:
        return const LinearGradient(
          colors: [Color(0xFFCD7F32), Color(0xFFB87333)], // Bronze
        );
      default:
        return const LinearGradient(
          colors: [Colors.white, Colors.white],
        );
    }
  }
}
