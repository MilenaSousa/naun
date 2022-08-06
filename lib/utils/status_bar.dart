import 'package:flutter/material.dart';
import 'package:naun/theme/colors.dart';

statusBar(context) {
  return PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: AppBar(backgroundColor: Color(ColorsBase.PRIMARY), elevation: 0,)
  );
}