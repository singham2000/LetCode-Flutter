import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data = [
    {
      "image":
          "https://images.pexels.com/photos/12123082/pexels-photo-12123082.jpeg?cs=srgb&dl=pexels-withsonya-12123082.jpg&fm=jpg",
      "name": "SkyForest",
      "likes": 252
    },
    {
      "image":
          "https://images.pexels.com/photos/12123082/pexels-photo-12123082.jpeg?cs=srgb&dl=pexels-withsonya-12123082.jpg&fm=jpg",
      "name": "RainForesrt",
      "likes": 562
    },
    {
      "image":
          "https://images.pexels.com/photos/12123082/pexels-photo-12123082.jpeg?cs=srgb&dl=pexels-withsonya-12123082.jpg&fm=jpg",
      "name": "FireForest",
      "likes": 894
    },
    {
      "image":
          "https://images.pexels.com/photos/12123082/pexels-photo-12123082.jpeg?cs=srgb&dl=pexels-withsonya-12123082.jpg&fm=jpg",
      "name": "LandForest",
      "likes": 233
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 255, 255, 255),
                height: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(data[index]['image']),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data[index]['name'],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.thumb_up,
                              color: Colors.red,
                            ),
                            Text(
                              data[index]['likes'].toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.earbuds_battery_sharp)),
      ),
    );
  }
}
