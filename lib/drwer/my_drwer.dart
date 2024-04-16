import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
MyDrawer({Key? key}) : super(key: key);
  final GlobalKey _adSoyadKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Spacer(),
            MyListTile(
              key: _adSoyadKey,
              title: "User Name",
              onTap: () {
                _showPopupMenu(context, _adSoyadKey);
              },
            ),
            const Spacer(),
            MyListTile(
              title: "Home",
              onTap: () => Navigator.of(context).pushNamed("/curved"),
            ),
            MyListTile(
              title: "Notice",
              onTap: () => Navigator.of(context).pushNamed("/announcement"),
            ),
            MyListTile(
              title: "Catalog",
              onTap: () => Navigator.of(context).pushNamed("/catalog"),
            ),
            MyListTile(
              title: "Exam",
              onTap: () => Navigator.of(context).pushNamed("/exam"),
            ),
            MyListTile(
              title: "Calendar",
              onTap: () => Navigator.of(context).pushNamed("/calendar"),
            ),
            MyListTile(
              title: "Admin",
              onTap: () => Navigator.of(context).pushNamed("/admin"),
            ),
            const Spacer(flex: 2),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: const Text("Copy Right"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      elevation: 25,
      margin: const EdgeInsets.only(left: 10, right: 55, bottom: 10),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
        ),
        leading: const Icon(Icons.image),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

void _showPopupMenu(BuildContext context, GlobalKey buttonKey) async {
  final RenderBox buttonBox =
      buttonKey.currentContext!.findRenderObject() as RenderBox;
  final offsetY = buttonBox.size.height;
  final offsetX = buttonBox.size.width / 1.2;

  showMenu(
    context: context,
    constraints: const BoxConstraints(maxHeight: 110, maxWidth: 50),
    color: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    position: RelativeRect.fromLTRB(
      buttonBox.localToGlobal(Offset.zero).dx + offsetX,
      buttonBox.localToGlobal(Offset.zero).dy + offsetY / 5,
      buttonBox.localToGlobal(buttonBox.size.bottomRight(Offset.zero)).dx,
      buttonBox.localToGlobal(buttonBox.size.bottomRight(Offset.zero)).dy +
          offsetY,
    ),
    items: [
      const PopupMenuItem(
        value: "exit",
        child: Icon(Icons.exit_to_app_rounded),
      ),
    ],
    elevation: 25,
  ).then((value) {
    if (value != null) {
      _handleMenuSelection(context, value);
    }
  });
}

void _handleMenuSelection(BuildContext context, dynamic value) {
  switch (value) {
    case "exit":
      Navigator.of(context).popUntil(ModalRoute.withName("/start"));
      break;
  }
}
