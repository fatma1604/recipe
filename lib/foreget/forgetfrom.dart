import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/widget/myTextFromfild.dart';
import 'package:recipes_app/widget/my_button.dart';


class Forgetfrom extends StatefulWidget {
  const Forgetfrom({Key? key}) : super(key: key);

  @override
  _ForgetfromState createState() => _ForgetfromState();
}

class _ForgetfromState extends State<Forgetfrom> {
  final _emailController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance; // Firebase Auth instance

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _handleResetButtonPressed() async {
    if (_emailController.text.isEmpty) {
      // Eğer e-posta alanı boşsa, kullanıcıya uygun bir hata mesajı gösterilir.
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Lütfen e-posta adresinizi girin."),
        ),
      );
      return;
    }

    try {
      // Kullanıcının email adresini kullanarak hesabın varlığını kontrol eder.
      List<String> signInMethods =
          await _auth.fetchSignInMethodsForEmail(_emailController.text);

      // Eğer hesap yoksa, kullanıcıya uygun bir hata mesajı gösterilir.
      if (signInMethods.isEmpty) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title:
                Text("Bu e-posta adresiyle kayıtlı bir kullanıcı bulunamadı."),
          ),
        );
        return;
      }

      // Kullanıcının email adresini kullanarak şifre sıfırlama maili gönderilir
      await _auth.sendPasswordResetEmail(email: _emailController.text.trim());

      // Kullanıcıya başarılı bir şekilde şifre sıfırlama bağlantısı gönderildiğinde gösterilecek SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Şifre sıfırlama bağlantısı e-postanıza gönderildi.'),
        ),
      );
    } on FirebaseAuthException catch (e) {
      // FirebaseAuthException, Firebase kimlik doğrulama işlemleri sırasında oluşan hataları temsil eder.
      // Örneğin, kullanıcı yoksa, hatalı bir e-posta adresi girilmişse veya ağ bağlantısı yoksa bu tür hatalar oluşabilir.

      // Eğer geçersiz e-posta hatası alınırsa, uygun bir hata mesajı gösterilir.
      if (e.code == 'invalid-email') {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Geçersiz e-posta adresi."),
          ),
        );
      } else {
        // Diğer hatalar için genel bir hata mesajı gösterilir.
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Hata"),
            content: Text(e.message ?? 'Bir hata oluştu.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Tamam'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(
          hintText: "E-mail",
          obscureText: false,
          controller: _emailController,
          prefixIcon: const Icon(Icons.email),
        ),
        const SizedBox(height: 20),
        MyButton(
          buttonText: "Sifremi Resetle",
          onTap: _handleResetButtonPressed,
        ),
      ],
    );
  }
}
