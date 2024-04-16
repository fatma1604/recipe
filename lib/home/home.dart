import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:recipes_app/drwer/my_advaced_drawer.dart';
import 'package:recipes_app/drwer/my_apbbar.dart';
import 'package:recipes_app/drwer/my_drwer.dart';
import 'package:recipes_app/home/data/data.dart';
import 'package:recipes_app/home/harcama.dart';
import 'package:recipes_app/home/harcamakaydet.dart';
import 'package:recipes_app/home/kartgorykart.dart';
import 'package:recipes_app/home/list.dart';
import 'package:recipes_app/home/new_page.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final drawerController = AdvancedDrawerController();

  void _changeScreen(Categori categori, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewPage(
          categori: categori,
        ),
      ),
    );
  }

  void _handleNewCard(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Harcamakaydet()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyAdvancedDrawer(
      drawer: MyDrawer(),
      controller: drawerController,
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DrawerTopBar(
                drawerController: drawerController,
                image: "",
              ),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  for (final i in categorylist)
                    Kategorykart(
                      categori: i,
                      onKategoryClik: () => _changeScreen(i, context),
                    ),
                  Harcama(
                    label: "Harcama",
                    onTap: () => _handleNewCard(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
