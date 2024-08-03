import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/models/team_member_model.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/widgets/team_group_item.dart';
import 'package:flutter/material.dart';

class TeamGroup extends StatelessWidget {
  const TeamGroup({super.key});

  static const List<TeamMemberModel> teamMembers = [
    TeamMemberModel(
      name: 'Livia Bator',
      position: 'CEO',
      image: Assets.imagesTeamMember1,
    ),
    TeamMemberModel(
        name: 'Randy Press',
        position: 'Director',
        image: Assets.imagesTeamMember2),
    TeamMemberModel(
      name: 'Workman',
      position: 'Designer',
      image: Assets.imagesTeamMember3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      TeamGroupItem(teamMemberModel: teamMembers[0]),
      TeamGroupItem(teamMemberModel: teamMembers[1]),
      TeamGroupItem(teamMemberModel: teamMembers[2]),
      _buildMoreArrow()
    ]);
  }

  Card _buildMoreArrow() {
    return const Card(
      elevation: 5,
      shape: CircleBorder(),
      child: CircleAvatar(
        radius: 25,
        backgroundColor: kSurface,
        child: Icon(
          Icons.arrow_forward_ios,
          color: kPrimary1,
        ),
      ),
    );
  }
}
