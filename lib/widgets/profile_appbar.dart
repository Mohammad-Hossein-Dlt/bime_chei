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
    return SliverAppBar(
      pinned: true,
      leading: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 20),
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            "assets/images/avatar.png",
            width: 34,
            height: 34,
            fit: BoxFit.cover,
          ),
        ),
      ),
      centerTitle: true,
      actions: const [
        SmallProfileMenu(),
      ],
    );
  }
}
