import 'package:flutter/material.dart';
class Projects extends StatelessWidget {
  final String title;
  final String image;
  bool? horizontal;
  Projects(
      {Key? key,
        required this.title,
        required this.image,
        this.horizontal = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              // child:Stack(children: [Image.asset(name)],)
            ),
          );
        });
  }
}