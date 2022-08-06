import 'package:flutter/material.dart';
import 'package:naun/theme/colors.dart';

class CategoryList extends StatelessWidget {
  const CategoryList();

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 18, top:20),
              child: Text('Categorias', style: TextStyle(color: Color(ColorsBase.GRAY_THREE), letterSpacing: 2.0),),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 19,),
                  CategoryButton(label: 'Todas', isSelected: true,),
                  CategoryButton(label: 'Café da manhã',),
                  CategoryButton(label: 'Almoço',),
                  CategoryButton(label: 'Sobremesa',),
                  CategoryButton(label: 'Sopas', ),
                  CategoryButton(label: 'Bebidas',),
                  CategoryButton(label: 'Lanches',),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const CategoryButton({this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Text(label, style: TextStyle(
          fontSize: isSelected ? 21 : 16, 
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),),
      padding: EdgeInsets.only(right: 26)
    );
  }
}