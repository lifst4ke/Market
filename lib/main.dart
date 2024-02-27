import 'package:flutter/material.dart';
import 'package:market/Products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center( child: Text('Добро Пожаловать!', style: TextStyle(
          color: Colors.black54,
          fontSize: 30,
        ),
        ),
        ),
        backgroundColor: Color.fromARGB(200,178,201,78),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 125),
              child: Column(
                children: [Text("Авторизация", style: TextStyle(
                    fontSize: 23,
                    color: Colors.black54
                ),
                ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    margin: EdgeInsets.only(top: 15),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Введите логин",
                          fillColor: Colors.black12,
                          filled: true,
                          helperText: "Логин используется для входа в систему",
                        ),
                        ),
                        TextFormField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Введите пароль",
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                          obscureText: true,
                        ),
                        Container(
                          child:  Row(
                            children: [
                              TextButton(onPressed: ()
                              {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignupPage()),
                              );
                              },
                                child: Text("Зарегистрироваться",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(200,178,201,78)
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 65),
                                child: ElevatedButton(onPressed: ()
                                {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ShopPage()),
                                );
                                },
                                  child: Text( "Войти",
                                    style: TextStyle(
                                        color: Color.fromARGB(200,178,201,78)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200,178,201,78),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 125),
              child: Column(
                children: [Text("Регистрация", style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(200, 178, 201, 78)
                ),
                ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    margin: EdgeInsets.only(top: 30),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Введите номер телефона/эл.почту",
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                        ),
                        TextFormField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Придумайте пароль",
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                          obscureText: true,
                        ),
                        TextFormField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Подтвердите пароль",
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                          obscureText: true,
                        ),
                        Container(
                          child:  Center(
                            child: ElevatedButton(onPressed: ()
                            {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginPage()),
                            );
                            },
                              child: Text( "Зарегистрироваться",
                                style: TextStyle(
                                    color: Color.fromARGB(200,178,201,78)
                                ),
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
        ],
      ),
    );
  }
}
