import 'package:bankingapp/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff21254A),
      appBar: BankAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Text(
                  'Online Başvuru',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                customSizedBox(),
                TextField(
                  decoration: customInputDecoration('Adınız'),
                ),
                customSizedBox(),
                TextField(
                  decoration: customInputDecoration('Soyadınız'),
                ),
                customSizedBox(),
                TextField(
                  decoration: customInputDecoration('Tc Kimlik Numaranız'),
                ),
                customSizedBox(),
                TextField(
                  decoration: customInputDecoration('Doğum Tariniz'),
                ),
                customSizedBox(),
                TextField(
                  decoration: customInputDecoration('Telefon Numaranız'),
                ),
                customSizedBox(),
                TextField(
                  decoration: customInputDecoration('Şifre'),
                ),
                customSizedBox(),
                TextField(
                  decoration: customInputDecoration('Şifre Onay'),
                ),
                customSizedBox(),
                Container(
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: const Text(
                        'Kayıt Ol',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customSizedBox() => const SizedBox(
        height: 20,
      );

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

  AppBar BankAppBar() {
    return AppBar(
      backgroundColor: Color(0xff21254A),
      elevation: 0,
      title: Row(
        children: const <Widget>[],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            icon: const Icon(
              Icons.person_add_alt_sharp,
              size: 36,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
