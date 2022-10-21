import 'package:flutter/material.dart';
import 'package:news_app_ui/screens/homescreen/cards.dart';
import 'package:news_app_ui/screens/utility/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/564x/86/3f/5c/863f5c83e7d9196be5ed13372b2eeca1.jpg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '19 Jan, 2022',
                    style: TextStyle(color: Colors.grey[400]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Breaking News',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ccolor, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/b0/7f/70/b07f706af3a55da89ff9cd85f2401585.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '14 passangers banned by Nona Airlines after bad behaviour',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 16,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/564x/86/3f/5c/863f5c83e7d9196be5ed13372b2eeca1.jpg'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'John Smith',
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                          Text(
                            '10 Jan, 2022',
                            style: TextStyle(color: Colors.grey[400]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CardView(
                Image:
                    'https://i.pinimg.com/236x/dd/43/3d/dd433d359bf2a9d55e64e91f1f73ba5b.jpg',
              ),
              CardView(
                Image:
                    'https://i.pinimg.com/236x/e6/d1/bd/e6d1bd5d3d51505477043e67ac10336b.jpg',
              ),
              CardView(
                Image:
                    'https://i.pinimg.com/236x/dd/43/3d/dd433d359bf2a9d55e64e91f1f73ba5b.jpg',
              )
            ])
          ],
        ),
      )),
    );
  }
}
