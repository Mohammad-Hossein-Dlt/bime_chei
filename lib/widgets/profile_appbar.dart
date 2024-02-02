import 'package:bime_chei/widgets/small_profile_menu.dart';
import 'package:flutter/material.dart';

class ProfileAppbar extends StatefulWidget {
  const ProfileAppbar({super.key});

  @override
  State<ProfileAppbar> createState() => _ProfileAppbarState();
}

class _ProfileAppbarState extends State<ProfileAppbar> {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      pinned: true,
      leading: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 40,
            height: 40,
            child: FittedBox(
              fit: BoxFit.cover,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/avatar.png",
                ),
              ),
            ),
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        SmallProfileMenu(),
      ],
    );
  }
}
