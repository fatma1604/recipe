import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/home/home.dart';
import 'package:recipes_app/login/login.dart';
import 'package:recipes_app/widget/myTextFromfild.dart';
import 'package:recipes_app/widget/my_button.dart';

class Registerfrom extends StatelessWidget {
  void Function()? onTap;

  Registerfrom({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPwController = TextEditingController();

    void register(BuildContext context) async {
      if (_passwordController.text == _confirmPwController.text) {
        try {
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text,
            password: _passwordController.text,
          );
          ScaffoldMessenger.of(context).showSnackBar(
         const   SnackBar(
              content:const Text('Kayıt başarılı!'),
            ),
          );
          // Kayıt başarılı olduğunda, giriş sayfasına yönlendirme yapabilirsiniz
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        } on FirebaseAuthException catch (e) {
          // Firebase Authentication hata durumlarını kontrol edin
          if (e.code == 'email-already-in-use') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Bu e-posta adresi zaten kullanılıyor.'),
              ),
            );
          } else if (e.code == 'invalid-email') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Geçersiz e-posta adresi.'),
              ),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Beklenmeyen bir hata oluştu.$e'),
              ),
            );
          }
        } catch (e) {
          // Diğer hata durumları için genel bir hata mesajı gösterin
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Beklenmeyen bir hata oluştu.'),
            ),
          );
        }
      } else {
        // Şifreler uyuşmazsa uyarı gösterin
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text('Şifreler eşleşmiyor.'),
          ),
        );
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              hintText: "E-mail", // 'text' yerine 'hintText' kullanıldı
              obscureText:
                  false, // 'obscurText' yerine 'obscureText' kullanıldı
              controller: _emailController,
              prefixIcon:const Icon(Icons.email), // Ön ek ikon eklendi
            ),
            const SizedBox(height: 16),
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _passwordController,
              prefixIcon:const Icon(Icons.lock), // Ön ek ikon eklendi
            ),
            const SizedBox(height: 16),
            MyTextField(
              hintText: "CONFIRM PASSWORD",
              obscureText: true,
              controller: _confirmPwController,
              prefixIcon: const Icon(Icons.lock),
            ),
          ],
        ),
      const  SizedBox(
          height: 20,
        ),
        MyButton(
          buttonText: "Kayıtol",
          onTap: () => register(context),
        ),
     const   Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 16),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: Text(
            " Giriş sayfasına git",
            style: TextStyle(
              color:const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w900,
              fontSize: 20,
              shadows: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
