import 'package:coffe_maker_project/features/menu_strip/menu_strip.dart';
import 'package:coffe_maker_project/features/pages/cart_page/cart_page.dart';
import 'package:coffe_maker_project/features/pages/profile_page/profile_page.dart';
import 'package:coffe_maker_project/util/test_data/models/user_profile.dart';
import 'package:flutter/material.dart';

class CoffeeMakerAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CoffeeMakerAppbar(
      {super.key, required this.preferredSize, required this.userProfile});

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
      leading: InkWell(
        onTap: () {
          showModalPage(
            context,
            const CartPage(),
          );
        },
        child: const Icon(
          Icons.shopping_cart_outlined,
          size: 35,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            radius: 40,
            onTap: () {
              showModalPage(
                context,
                ProfilePage(userProfile: widget.userProfile),
              );
            },
            child: const Icon(
              Icons.account_circle_outlined,
              size: 35,
            ),
          ),
        )
      ],
      bottom: const TabBar(
        tabs: tabsItems,
        isScrollable: true,
      ),
    );
  }

  Future<dynamic> showModalPage(BuildContext context, Widget child) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: child),
        );
      },
    );
  }
}
