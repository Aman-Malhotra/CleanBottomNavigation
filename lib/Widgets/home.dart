import 'package:clean_bottom_nav_bar/Widgets/home_pm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomePm homePm = Provider.of<HomePm>(context);
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    Widget chip(BottomData b) {
      return Expanded(
        flex: homePm.getSelected == b.id ? 2 : 1,
        child: FlatButton.icon(
          icon: Hero(
            tag: b.icon,
            child: Icon(
              b.icon,
              color: b.color,
              size: size.height * 0.03,
            ),
          ),
          label: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.height * 0.01),
            child: homePm.getSelected == b.id
                ? Text(
                    b.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: b.color,
                    ),
                  )
                : Container(
                    height: 0.0,
                    width: 0.0,
                  ),
          ),
          color: homePm.getSelected == b.id
              ? b.color.withOpacity(0.1)
              : Colors.transparent,
          onPressed: () {
            homePm.setSelected = b.id;
          },
          padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size.height * 0.05),
          ),
        ),
      );
    }

    Widget bottomBar() {
      return Container(
        decoration: BoxDecoration(
          color: theme.canvasColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              size.height * 0.02,
            ),
            topRight: Radius.circular(
              size.height * 0.02,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: homePm.bottomData.map((e) => chip(e)).toList(),
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Text(
          homePm.bottomData[homePm.getSelected].title,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: size.height * 0.08,
            color: theme.canvasColor,
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
