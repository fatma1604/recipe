import 'package:flutter/material.dart';
import 'package:recipes_app/onbord/onbord_screnn.dart';
import 'package:recipes_app/them/color.dart';

final pages = [
  const PageData(
    icon: Icons.food_bank_outlined,
    title: "En sevdiğiniz yemeği arayın",
    bgColor: AppColor.bgColor1,
    textColor:AppColor.text1,
  ),
  const PageData(
    icon: Icons.add_reaction_sharp,
    title: "Yeklerin Tarifini Bulun",
    bgColor: AppColor.bgColor2,
    textColor: AppColor.text2,
  ),
  const PageData(
    icon: Icons.account_balance_wallet_rounded,
    title: "Harcamalarınızı Kaydedin",
    bgColor: AppColor.bgColor3,
    textColor:AppColor.text3,
  ),

];