import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naun/theme/colors.dart';
import 'package:naun/widgets/category_list.dart';
import 'package:naun/widgets/logo.dart';
import 'package:naun/widgets/search_input.dart';

class AppBarSearch extends StatelessWidget {

  final Widget body;
  const AppBarSearch({@required this.body});

  @override
  Widget build(BuildContext context) {

    final _appBar = Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Logo(),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Expanded(child: CustomSearch()),
              IconButton(
                icon: Icon(FontAwesomeIcons.slidersH, size: 22, color: Colors.white,),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            backgroundColor: Color(ColorsBase.PRIMARY),
            floating: false,
            expandedHeight: 120.0,
            flexibleSpace: _appBar,
            bottom: PreferredSize(                    
              preferredSize: Size.fromHeight(60.0),   
              child: Container()
            ),  
          ),

        SliverPersistentHeader(
          pinned: true,
          delegate: _SliverAppBarDelegate()
        ),

        SliverToBoxAdapter(
          child: body,
        ),
      ],
    );

  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return CategoryList();
  }

  @override
  double get maxExtent => 90.0;

  @override
  double get minExtent => 90.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
  
}