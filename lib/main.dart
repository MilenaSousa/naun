import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naun/screens/menu_page.dart';
import 'package:naun/theme/colors.dart';

void main() => runApp(NaunApp());

class NaunApp extends StatelessWidget {
  // This widget is the root of your application.

  _routes(RouteSettings settings) {
    switch (settings.name) {
      case MenuPage.tag:
        return MyCustomRoute(widget: MenuPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naun',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color(ColorsBase.GRAY_ONE)),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2:
              TextStyle(color: Color(ColorsBase.GRAY_TWO), letterSpacing: 0.5),
        ),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder()
        }),
      ),
      home: MenuPage(),
      onGenerateRoute: (RouteSettings settings) => _routes(settings),
    );
  }
}

class MyCustomRoute extends PageRouteBuilder {
  final Widget widget;
  MyCustomRoute({this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return new CupertinoPageTransition(
              child: child,
              secondaryRouteAnimation: secondaryAnimation,
              primaryRouteAnimation: animation,
              linearTransition: true,
            );
          },
        );
}
