import 'package:courses_control/const.dart';
import 'package:flutter/material.dart';

class MainBlock extends StatelessWidget {
  const MainBlock(
      {Key? key,
      required this.title,
      required this.titleColor,
      required this.picture,
      required this.page
      })
      : super(key: key);

  final String title;
  final Color titleColor;
  final String picture;
  final String page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(page);
        },
        child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: secondaryColor,
              image: DecorationImage(
                image: AssetImage(picture),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                verticalDirection: VerticalDirection.down,
                textDirection: TextDirection.ltr,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontSize: 32,
                          color: titleColor,
                          fontWeight: FontWeight.w900,
                          backgroundColor: Colors.grey[400]))
                ],
              )
            ])));
  }
}
