import 'package:coffe_maker_project/features/pages/profile_page/settings_page.dart';
import 'package:coffe_maker_project/util/test_data/models/user_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.userProfile});

  final UserProfile userProfile;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 32, 32, 35),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.account_circle_outlined,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.userProfile.name,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        widget.userProfile.phoneNumber,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return FractionallySizedBox(
                                    heightFactor: 0.6,
                                    child: SettingsPage(userProfile: widget.userProfile,),
                                  );
                                },
                              );
                            },
                            child: const SizedBox(
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.access_time_outlined,
                      size: 100,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Здесь будет история заказов",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll<Color>(Colors.blue),
                          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10))),
                      child: const Text(
                        "Заказать",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
