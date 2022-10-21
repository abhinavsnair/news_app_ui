import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:news_app_ui/base_screen.dart';
import 'package:news_app_ui/screens/utility/utils.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              'Select category',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
              child: GroupButton(
                options: GroupButtonOptions(
                    borderRadius: BorderRadius.circular(20),
                    selectedColor: const Color.fromARGB(255, 17, 84, 228),
                    unselectedColor: const Color.fromARGB(255, 61, 61, 61),
                    selectedTextStyle: const TextStyle(color: Colors.white),
                    unselectedTextStyle: const TextStyle(color: Colors.white),
                    mainGroupAlignment: MainGroupAlignment.start,
                    crossGroupAlignment: CrossGroupAlignment.center,
                    textPadding: const EdgeInsets.all(2)),
                enableDeselect: true,
                buttons: const [
                  'Automotive',
                  'Crimes',
                  'Buisness',
                  'Fitness',
                  'Astro',
                  'Ecom',
                  'Relationship',
                  'food',
                  'Electronics',
                  'Health',
                  'Tech',
                  'Entertainment',
                  'World',
                  'Sports',
                  'Other',
                ],
                isRadio: false,
                // onSelected: (value, index, isSelected) => print(index),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 280),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BaseScreen()));
                },
                child: Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 8, 111, 207),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.black,
                      ),
                      Text('Done')
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
