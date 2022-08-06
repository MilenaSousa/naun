import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naun/theme/colors.dart';

class ReceipeCard extends StatelessWidget {
  final String title;
  final String img;

  const ReceipeCard({this.title, this.img,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 4),
            color: Color(ColorsBase.GRAY_THREE).withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 80,
            child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Image.network(img, fit: BoxFit.cover,),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AutoSizeText(title, style: TextStyle(color: Color(ColorsBase.GRAY_ONE), fontSize: 18, fontWeight: FontWeight.w600), maxLines: 2,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(right: 4), child: Icon(FontAwesomeIcons.clock, size: 18, color: Color(ColorsBase.SECONDARY),),),
                      Text('30 min'),
                      Spacer(),
                      Padding(padding: EdgeInsets.only(right: 4), child: Icon(FontAwesomeIcons.fireAlt, size: 17, color: Color(ColorsBase.RED),),),
                      Text('0 kcal'),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}