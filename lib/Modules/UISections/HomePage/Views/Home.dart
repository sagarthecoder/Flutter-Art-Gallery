import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFF1F4F9),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Color(0XFFFD7C4B),
            size: 32,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Boards',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF474747)),
              ),
              const Text(
                'Following galleries to power up your art career',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF979EA6),
                ),
              ),
              addArtListButtons()
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> addSpacingBetweenItems(List<Widget> children, double spacing) {
    return children
        .map((widget) => Padding(
              padding: EdgeInsets.only(right: spacing),
              child: widget,
            ))
        .toList();
  }

  Widget addArtListButtons() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: addSpacingBetweenItems(
            [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFFFD7C4B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
                child: const Text('painting',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFFD7C4B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: const Text(
                    'illustrations',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ],
            8.0,
          )),
    );
  }
}
