import 'package:flutter/material.dart';
import 'package:flutter_atividade/config/app_colors.dart';
import 'package:flutter_atividade/config/app_texts_style.dart';

class TerceiraPage extends StatefulWidget {
  const TerceiraPage({super.key});

  @override
  State<TerceiraPage> createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Backgroundpages,
      appBar: AppBar(
        title: Text("Meus Projetos", style: AppTextsStyle.titleappbar),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Efeito Borboleta", style: AppTextsStyle.subtitlepages),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.folder_copy,
                            color: Colors.orange,
                            size: 30,
                          ),
                          SizedBox(width: 14),
                          Text(
                            "App De Notas",
                            style: AppTextsStyle.titleappbar.copyWith(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 45,
                        right: 25,
                        top: 5,
                      ),
                      child: Text(
                        "Aplicativo para gerenciamento de notas dos alunos de ping pong",
                        style: AppTextsStyle.subtitlepages.copyWith(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Ver Projeto"),
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
