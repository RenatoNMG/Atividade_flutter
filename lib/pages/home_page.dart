import 'package:flutter/material.dart';
import 'package:flutter_atividade/pages/segunda_page.dart';
import 'package:flutter_atividade/pages/terceira_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // telas que vão aparecer
  final List<Widget> _pages = [
    Center(child: Text("Página Início")),
    Center(child: Text("Página Perfil")),
    Center(child: Text("Página Mensagens")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // muda a tela
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Icon(Icons.brightness_7, size: 100, color: Colors.orange),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      "Renato ",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "Navaro",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Bem Vindo",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Senha",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 25, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Esqueci Minha Senha")],
                  ),
                ),

                SizedBox(height: 50),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TerceiraPage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(style: TextStyle(fontSize: 20), "Login")],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Perfil",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "mensagem"),
        ],
      ),
    );
  }
}
