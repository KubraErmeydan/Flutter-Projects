import 'package:bankingapp/register.dart';
import 'package:flutter/material.dart';
import 'package:bankingapp/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff21254A),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * .25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/topImage.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Merhaba\nHoşgeldiniz",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: customInputDecoration(
                          "Kullanıcı Adı veya TC Kimlik no"),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: customInputDecoration("Şifre"),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Şifremi Unuttum",
                          style: TextStyle(
                            color: Colors.pink[200],
                          ),
                        ),
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 50,
                          width: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 68),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xff31274F),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              },
                              child: const Text(
                                "Giriş Yapınız",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()));
                        },
                        child: Text(
                          "Hesap Oluştur",
                          style: TextStyle(
                            color: Colors.pink[200],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// textlerde kod fazlalığı olamaması için
  Widget customSizedBox() => const SizedBox(
        height: 20,
      );

// Extract method ile inputu ayarlama
  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey),
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)),
    );
  }
}
