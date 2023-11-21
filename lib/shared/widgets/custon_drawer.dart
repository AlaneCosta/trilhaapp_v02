import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/login_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Um menu lateral (drawer)
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Alinhar os itens à esquerda
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                context: context,
                builder: (BuildContext bc) {
                  return Wrap(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: const Text("Camera"),
                        leading: const Icon(Icons.camera),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: const Text("Galeria"),
                        leading: const Icon(Icons.album),
                      ),
                    ],
                  );
                },
              );
            },
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.purple[700]),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.network(
                    "https://hermes.digitalinnovation.one/assets/diome/logo.png"),
              ),
              accountName: const Text("Alane Costa"),
              accountEmail: const Text("email@email.com"),
            ),
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity, // Largura total do item
              child: const Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 5),
                  Text("Dados Cadastrais"),
                ],
              ), // Texto exibido no item
            ),
            onTap: () {
              // O que fazer quando o usuário tocar em "Dados Cadastrais"
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DadosCadastraisPage(),
                ),
              );
            },
          ),
          const Divider(), // Linha divisória entre itens do menu
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity,
              child: const Row(
                children: [
                  Icon(Icons.info),
                  SizedBox(width: 5),
                  Text("Termos de Uso e Privacidade"),
                ],
              ),
            ),
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    child: const Column(
                      children: [
                        Text(
                          "Termos de uso e privacidade",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Lorem Quisque auctor amet ipsum dolor sit amet, consectetur adipiscing elit. Quisque auctor amet diam id nibh ultricies facilisis. Suspendisse congue suscipit ante, vel tincidunt enim sodales interdum. Praesent sagittis efficitur magna, suscipit sagittis mauris venenatis id. Fusce bibendum sed urna vel laoreet. Donec aliquam neque in hendrerit accumsan. Quisque auctor amet ipsum dolor sit amet, consectetur adipiscing elit Sed euismod sagittis volutpat. Donec laoreet massa leo, a tristique velit pulvinar non. Proin enim leo, sagittis congue turpis vel, varius venenatis est. Vivamus interdum lacus velit, malesuada ultricies lorem egestas a.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity,
              child: const Row(
                children: [
                  Icon(Icons.album),
                  SizedBox(width: 5),
                  Text("Configurações"),
                ],
              ),
            ),
            onTap: () {
              // O que fazer quando o usuário tocar em "Configurações"
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity,
              child: const Row(
                children: [
                  Icon(Icons.exit_to_app),
                  SizedBox(width: 5),
                  Text("Sair"),
                ],
              ),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext bc) {
                    return AlertDialog(
                      alignment: Alignment.centerLeft,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: const Text("Meu App"),
                      content: const Wrap(children: [
                        Text("Você sairá do App"),
                        Text("Deseja realmente sair do Aplicativo?"),
                      ]),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Não")),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text("Sim")),
                      ],
                    );
                  });
              // O que fazer quando o usuário tocar em "Sair"
            },
          ),
        ],
      ),
    );
  }
}
