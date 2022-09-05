import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90.0,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex == index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 30.0),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: selectedIndex == index
                          ? Colors.black
                          : Colors.white70,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 0.8,
                    ),
                  ),
                ),
              );
            }));
  }
}
