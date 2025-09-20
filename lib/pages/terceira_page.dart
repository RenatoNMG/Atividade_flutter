import 'package:flutter/material.dart';
import 'package:flutter_atividade/config/app_colors.dart';
import 'package:flutter_atividade/config/app_texts_style.dart';






class TerceiraPage extends StatefulWidget {
  const TerceiraPage({super.key});

  @override
  State<TerceiraPage> createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage> {


  
  int _selectedIndex = 0;

  // Telas que vão aparecer conforme o índice
  final List<Widget> _pages = [
    // Página Inicial
    Center(
      child: Text(
        "Página Início",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ),

    // Página Perfil
    Center(
      child: Text(
        "Página Perfil",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ),

    // Página Mensagens
    Center(
      child: Text(
        "Página Mensagens",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Backgroundpages,
      appBar: AppBar(
        title: Text("Meus Projetos", style: AppTextsStyle.titleappbar),
      ),
      body: _selectedIndex == 0
          ? _buildProjetosPage() // só mostra os cards se estiver no "Início"
          : _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Perfil",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Mensagem"),
        ],
      ),
    );
  }

  // Sua página de projetos (Início)
  Widget _buildProjetosPage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Efeito Borboleta", style: AppTextsStyle.subtitlepages),
          const SizedBox(height: 15),
          _buildProjetoCard(
            titulo: "App De Notas",
            descricao:
                "Aplicativo para gerenciamento de notas dos alunos de ping pong",
          ),
          const SizedBox(height: 15),
          _buildProjetoCard(
            titulo: "API de Chatbot",
            descricao: "Aplicativo para gerenciamento de documentos",
          ),
          const SizedBox(height: 15),
          _buildProjetoCard(
            titulo: "API de ChatBot",
            descricao: "Aplicativo para gerenciamento de faltas de alunos",
          ),
        ],
      ),
    );
  }

  // Card de projeto reutilizável
  Widget _buildProjetoCard({
    required String titulo,
    required String descricao,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.folder_copy, color: Colors.orange, size: 30),
                const SizedBox(width: 14),
                Text(
                  titulo,
                  style: AppTextsStyle.titleappbar.copyWith(fontSize: 22),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 25, top: 5),
              child: Text(
                descricao,
                style: AppTextsStyle.subtitlepages.copyWith(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      backgroundColor: const WidgetStatePropertyAll(
                        Colors.orange,
                      ),
                    ),
                    child: const Text("Ver Projeto"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
