import 'package:flutter/material.dart';
import 'package:news_app_ui/screens/utility/utils.dart';

class MyFeed extends StatelessWidget {
  MyFeed({super.key});
  List image = [
    'https://i.pinimg.com/236x/81/3e/ac/813eaca975817652cf28d8c31023435d.jpg',
    'https://i.pinimg.com/236x/e7/26/95/e726952e74d4cd5a29b260e40072a08f.jpg',
    'https://images.hindustantimes.com/default/148x111.jpg',
    'https://images.hindustantimes.com/img/2022/10/21/550x309/630dd5e2-4fde-11ed-9c66-3477b4c7a0de_1666205325556_1666349344695_1666349344695.jpg',
    'https://i.pinimg.com/236x/81/3e/ac/813eaca975817652cf28d8c31023435d.jpg'
  ];
  List category = ['Buisness', 'Politics', 'Social', 'Social', 'Buisness'];
  List title = [
    'Tesla faces bumpier ride breaking into\nIndia',
    'Joe Beiden Plans day one order to\nreverse Trump decisions',
    'Army helicopter crashes in Arunachal; two\nbodies recovered, says report',
    'India successfully tests new-gen nuclear-capable\nAgni Prime ballistic missile',
    'Tesla faces bumpier ride breaking into \nIndia'
  ];
  List author = [
    'Johnnie N.Krug',
    'Emily G. Trice',
    'Jennifer M.Smith',
    'Selena M.Waters',
    'Johnnie N.Krug'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good morning',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'Denish',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Your daily read',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Column(
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(image[index]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      category[index],
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 240,
                                      child: Text(
                                        title[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 14),
                                        // textAlign: TextAlign.left,
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                        softWrap: false,
                                      ),
                                    ),
                                    Text(
                                      author[index],
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Jan 10,2022',
                                            style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            width: 25,
                                          ),
                                          Text(
                                            '5 min read',
                                            style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            width: 90,
                                          ),
                                          const Icon(
                                            Icons.bookmark,
                                            color: Colors.blue,
                                            size: 18,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
