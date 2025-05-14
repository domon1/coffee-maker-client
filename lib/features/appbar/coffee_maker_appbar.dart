import 'package:coffe_maker_project/features/menu_strip/menu_strip.dart';
import 'package:coffe_maker_project/features/pages/profile_page/profile_page.dart';
import 'package:coffe_maker_project/util/test_data/models/user_profile.dart';
import 'package:flutter/material.dart';

class CoffeeMakerAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CoffeeMakerAppbar({super.key, required this.preferredSize, required this.userProfile});

  @override
  final Size preferredSize;

  final UserProfile userProfile;

  @override
  State<CoffeeMakerAppbar> createState() => _CoffeeMakerAppbarState();
}

class _CoffeeMakerAppbarState extends State<CoffeeMakerAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.location_on_outlined,
        size: 35,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            radius: 40,
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return FractionallySizedBox(
                    heightFactor: 0.9,
                    child: ProfilePage(userProfile: widget.userProfile,),
                  );
                },
              );
            },
            child: const Icon(
              Icons.account_circle_outlined,
              size: 35,
            ),
          ),
        )
      ],
      bottom: const TabBar(tabs: tabsItems, isScrollable: true,),
    );
  }
}
