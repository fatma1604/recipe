import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:recipes_app/widget/nebox.dart';



class DrawerTopBar extends StatefulWidget {
  const DrawerTopBar({
    Key? key,
    required this.drawerController,
   
    this.title,
  }) : super(key: key);
  final AdvancedDrawerController drawerController;
  
  final String? title;

  @override
  State<DrawerTopBar> createState() => _DrawerTopBarState();
}

class _DrawerTopBarState extends State<DrawerTopBar> {
  @override
  Widget build(BuildContext context) {
   

    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                widget.drawerController.showDrawer();
              },
              icon:  NeuBox(child: Icon(Icons.menu))),
   
        ],
      ),
    );
  }
}