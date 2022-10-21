import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardView extends StatelessWidget {
  final String Image;

  CardView({
    super.key,
    required this.Image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(Image), fit: BoxFit.cover),
                color: Colors.black,
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
                width: 240,
                child: Text(
                  'An illimois town fights to save its power plant',
                  style: TextStyle(
                      fontSize: 13.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.grey[400],
                      size: 15,
                    ),
                    Text(
                      'jan 10, 2022',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Icon(
                      Icons.access_time_sharp,
                      color: Colors.grey[400],
                      size: 15,
                    ),
                    Text(
                      '10 min read',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
