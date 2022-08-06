import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white
      ),
      child: TextField(
        style: TextStyle(color: Colors.red),
        decoration: InputDecoration(
          labelText: 'Pesquisar',
          icon: Icon(Icons.search,),
          border: InputBorder.none
        ),
      ),
    );
  }
}