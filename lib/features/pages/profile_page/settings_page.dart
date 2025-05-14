import 'package:coffe_maker_project/util/test_data/models/user_profile.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key, required this.userProfile});

  UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Натройки",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 32, 32, 35),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Имя",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text( // TODO Добавить возможносьт редактирования имени пользователя
                          userProfile.name,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Номер телефона",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          userProfile.phoneNumber,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 32, 32, 35),
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding( // TODO Добавить возможносьт редактирования почты
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Почта для чеков",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.mail_outlined, color: Colors.white,),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 32, 32, 35),
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "О приложении",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Напиши нам",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 32, 32, 35),
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Выход",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                  //backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 40, vertical: 10))),
              child: const Text(
                "Удалить аккаунт",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
