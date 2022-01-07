import 'package:atv_tec/modules/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            width: w,
            height: h * 0.27,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/img/athor.png"),
            )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            width: w,
            child: Column(
              children: [
                Text(
                  'Bem-Vindo',
                  style: TextStyle(
                    fontFamily: 'open-sans',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Faça o Login ou Cadastra-se',
                  style: TextStyle(
                    fontFamily: 'open-sans',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ]),
                  child: SingleChildScrollView(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.1,
                        )),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]),
                  child: SingleChildScrollView(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        prefixIcon: Icon(Icons.password, color: Colors.blue),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.11,
                        )),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Esqueceu sua senha ?',
                  style: TextStyle(
                    fontFamily: 'open-sans',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Modular.to.pushNamed('/home'),
            child: Container(
              margin: EdgeInsets.only(top: 15),
              width: w * 0.45,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage("assets/img/botao.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    fontFamily: 'open-sans',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.14,
          ),
          RichText(
              text: TextSpan(
                  text: 'Não tem um conta ? ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  children: [
                TextSpan(
                    text: 'Criar conta',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))
              ]))
        ],
      ),
    );
  }
}
