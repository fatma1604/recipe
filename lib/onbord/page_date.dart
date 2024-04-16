import 'package:flutter/material.dart';
import 'package:recipes_app/onbord/onbord_screnn.dart';

final pages = [
  const PageData(
    icon: Icons.food_bank_outlined,
    title: "En sevdiğiniz yemeği arayın",
    bgColor: Color.fromARGB(255, 233, 165, 245),
    textColor: Color.fromARGB(255, 28, 131, 201),
  ),
  const PageData(
    icon: Icons.add_reaction_sharp,
    title: "Yeklerin Tarifini Bulun",
    bgColor: Color.fromARGB(255, 28, 131, 201),
    textColor: Color.fromARGB(255, 138, 55, 153),
  ),
  const PageData(
    icon: Icons.account_balance_wallet_rounded,
    title: "Harcamalarınızı Kaydedin",
    bgColor: Color.fromARGB(255, 179, 219, 247),
    textColor: Color.fromARGB(255, 78, 60, 121),
  ),

];