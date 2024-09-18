import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallary_art/Modules/UISections/HomePage/Views/DetailView.dart';
import '../Model/ArtList.dart';
import 'ArtItemView.dart';

class ArtView extends StatefulWidget {
  const ArtView({super.key});

  @override
  State<ArtView> createState() => _ArtViewState();
}

class _ArtViewState extends State<ArtView> {
  var items = ArtList().items;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
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
          addArtListButtons(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: GestureDetector(
                    onTap: (() {
                      print('Did Tapped');
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return DetailView(image: item.img1);
                      }));
                    }),
                    child: Container(
                        width: double.infinity,
                        height: 225,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: ArtItemView(artInfo: item)),
                  ),
                );
              }).toList(),
            ),
          ))
        ],
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
