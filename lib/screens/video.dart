import 'package:flutter/material.dart';
import 'package:news_app_ui/screens/utility/utils.dart';

class Video extends StatelessWidget {
  Video({super.key});
  List image = [
    'https://i.pinimg.com/236x/e5/6c/c8/e56cc825893612ffc933be1977b212af.jpg',
    'https://i.pinimg.com/236x/93/2a/83/932a831eb96493b25d9be7a085c8b494.jpg',
    'https://i.pinimg.com/236x/cd/0b/2f/cd0b2f920131052697ee474d0574f63a.jpg',
    'https://i.pinimg.com/236x/c3/04/bc/c304bccd9a5c750f1b3e04173eca4d75.jpg',
    'https://i.pinimg.com/236x/e5/6c/c8/e56cc825893612ffc933be1977b212af.jpg'
  ];
  List title = [
    'The man who paid 55 lakh to increase his height',
    'MINI India sells 512 vehicles in 2022',
    'Steve Smith released by Rajasthan Royals ahead auctions',
    '5 common myths about Thyroid disease you believing',
    'The man who paid 55 lakh to increase his height'
  ];
  List time = ['2:30', '4:45', '3:33', '5:55', '1:28'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Videos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Column(
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(image[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              width: 240,
                              child: Text(
                                title[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 14),
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: false,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_sharp,
                                  color: Colors.grey[400],
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  time[index],
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey[400],
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '25k views',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
