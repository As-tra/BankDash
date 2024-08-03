import 'package:bank_dashboard/models/team_member_model.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class TeamGroupItem extends StatelessWidget {
  const TeamGroupItem({super.key, required this.teamMemberModel});
  final TeamMemberModel teamMemberModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 33.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(teamMemberModel.image),
            radius: 35,
          ),
          const SizedBox(height: 15),
          Text(
            teamMemberModel.name,
            style: Styles.interRegular16(context),
          ),
          const SizedBox(height: 5),
          Text(
            teamMemberModel.position,
            style: Styles.interRegular16(context),
          )
        ],
      ),
    );
  }
}
