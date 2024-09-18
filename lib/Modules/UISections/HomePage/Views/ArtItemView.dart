import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallary_art/Modules/UISections/HomePage/Model/ArtList.dart';

class ArtItemView extends StatefulWidget {
  final ArtInfo artInfo;
  const ArtItemView({required this.artInfo});
  // const ArtItemView({super.key});
  @override
  State<ArtItemView> createState() => _ArtItemViewState();
}

class _ArtItemViewState extends State<ArtItemView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  widget.artInfo.img1,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        widget.artInfo.img2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Expanded(
                      child: Image.asset(
                        widget.artInfo.img3,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 60,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                widget.artInfo.artType.getTitle(),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
