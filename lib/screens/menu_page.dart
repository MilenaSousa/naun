import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naun/theme/colors.dart';
import 'package:naun/utils/status_bar.dart';
import 'package:naun/widgets/app_bar_search.dart';
import 'package:naun/widgets/receip_card.dart';

class MenuPage extends StatelessWidget {
  static const String tag = 'menu-page';

  @override
  Widget build(BuildContext context) {
    final String img1 =
        'https://i0.wp.com/www.dosedeilusao.com/wp-content/uploads/2020/06/c4ca4238a0b923820dcc509a6f75849b-2-754x394-1.jpg';
    final String img2 =
        'https://s2.glbimg.com/YL5psY4gMrvWgxRkIECMGvNlfnY=/e.glbimg.com/og/ed/f/original/2016/12/21/cc50recsur_17web.jpg';
    final String img3 =
        'https://www.milkpoint.com.br/img/artigo/conteudo/59795/';
    final String img4 =
        'https://www.pacoquita.com.br/upload/posts/large/33983-201503041146.jpg';

    final body = GridView.count(
      childAspectRatio: 1.1,
      crossAxisCount: 2,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      mainAxisSpacing: 24,
      crossAxisSpacing: 15,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      children: <Widget>[
        ReceipeCard(title: 'Bowl de Frutas', img: img1),
        ReceipeCard(title: 'Café caseiro', img: img2),
        ReceipeCard(title: 'Pão de queijo', img: img3),
        ReceipeCard(title: 'Geleia de Framboesa', img: img4),
        ReceipeCard(title: 'Bowl de Frutas', img: img1),
        ReceipeCard(title: 'Café caseiro', img: img2),
        ReceipeCard(title: 'Pão de queijo', img: img3),
        ReceipeCard(title: 'Geleia de Framboesa', img: img4),
        ReceipeCard(title: 'Bowl de Frutas', img: img1),
        ReceipeCard(title: 'Café caseiro', img: img2),
        ReceipeCard(title: 'Pão de queijo', img: img3),
        ReceipeCard(title: 'Geleia de Framboesa', img: img4),
      ],
    );

    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: statusBar(context),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(ColorsBase.PRIMARY),
            unselectedItemColor: Color(ColorsBase.GRAY_TWO),
            selectedLabelStyle: TextStyle(color: Color(ColorsBase.GRAY_TWO)),
            unselectedLabelStyle: TextStyle(color: Color(ColorsBase.GRAY_TWO)),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.book),
                  title: Container(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('Receitas'),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.smile),
                  title: Container(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('Social'),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.seedling),
                  title: Container(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('Benefícios'),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user),
                  title: Container(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('Perfil'),
                  ))
            ]),
        body: AppBarSearch(body: body));
  }
}
