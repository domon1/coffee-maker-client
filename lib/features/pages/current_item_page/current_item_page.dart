import 'package:flutter/material.dart';

class CurrentItemPage extends StatefulWidget {
  const CurrentItemPage({super.key});

  @override
  State<CurrentItemPage> createState() => _CurrentItemPageState();
}

class _CurrentItemPageState extends State<CurrentItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          "assets/images/latte.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Латте",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text(
                "Настрой как любишь",
                style: TextStyle(fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //TODO: Заменить на кнопки мб?? (Добавить ListView.builder, создавать элементы в зависимости от списка)
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return FractionallySizedBox(
                              heightFactor: 0.5,
                              child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Center(
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text("Посыпки", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: GridView.builder(
                                            itemCount: 9,
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 5,
                                              mainAxisSpacing: 5,
                                            ),
                                            itemBuilder: (context, index) {
                                              return Container(
                                                color: Colors.amber,
                                                child: Center(child: Text("$index")));
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(child: Text("Посыпки"))),
                    ),
                    const SizedBox(
                        width: 80,
                        height: 80,
                        child: Center(child: Text("Сиропы"))),
                    const SizedBox(
                        width: 80,
                        height: 80,
                        child: Center(child: Text("Топпинги"))),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Размер кружки",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //TODO: Заменить на кнопки мб?? (Добавить ListView.builder, создавать элементы в зависимости от списка)
                    SizedBox(
                        width: 80, height: 40, child: Center(child: Text("S"))),
                    SizedBox(
                        width: 80, height: 40, child: Center(child: Text("M"))),
                    SizedBox(
                        width: 80, height: 40, child: Center(child: Text("L"))),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Описание",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Text(
                      "Латте (от итал. latteien — «латеин») — кофейный напиток итальянской кухни на основе эспрессо с добавлением в него подогретого до 65 градусов вспененного молока"),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("+ 220 P"))
            ],
          ),
        ),
      ),
    );
  }
}
