import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/card_page.dart';
import 'package:trilhaapp/pages/image_assets.dart';
import 'package:trilhaapp/pages/list_view.dart';
import 'package:trilhaapp/pages/list_view_horizontal.dart';
import 'package:trilhaapp/pages/tarefa_page.dart';
import 'package:trilhaapp/shared/widgets/custon_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Página Principal"), // Título da barra de navegação
        ),
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPagina = value;
                  });
                },
                children: const [
                  CardPage(),
                  ImageAssetsPage(),
                  ListViewPage(),
                  ListViewHorizontal(),
                  TarefaPage(),
                ],
              ),
            ),
            BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: posicaoPagina,
                items: const [
                  BottomNavigationBarItem(
                    label: "Página 1",
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: "Página 2",
                    icon: Icon(Icons.add),
                  ),
                  BottomNavigationBarItem(
                    label: "Página 3",
                    icon: Icon(Icons.person),
                  ),
                  BottomNavigationBarItem(
                    label: "Página 4",
                    icon: Icon(Icons.image),
                  ),
                  BottomNavigationBarItem(
                    label: "Tarefas",
                    icon: Icon(Icons.list),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
