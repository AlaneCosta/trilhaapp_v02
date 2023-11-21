import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const LoginPage({Key? key}); // Classe da página de login

  @override
  State<LoginPage> createState() => _LoginPage(); // Cria o estado da página
}

class _LoginPage extends State<LoginPage> {
  var emailController =
      TextEditingController(text: ""); // Controlador para o campo de email
  var senhaController =
      TextEditingController(text: ""); // Controlador para o campo de senha
  // ignore: non_constant_identifier_names
  bool IsObscureText =
      true; // Flag para controlar se a senha está oculta ou não

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // Certifica-se de que o conteúdo seja exibido dentro das áreas seguras
      child: Scaffold(
        backgroundColor:
            const Color.fromARGB(255, 35, 13, 41), // Cor de fundo da página
        body: SingleChildScrollView(
          // Torna o conteúdo rolável
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              // Coluna principal
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  // Linha que contém o logotipo
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                        "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Já tem cadastro?", // Texto "Já tem cadastro?"
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 212, 247, 250)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Faça seu login e make the change._", // Texto "Faça seu login e faça a diferença."
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 212, 247, 250)),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  // Campo de entrada de email
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller:
                        emailController, // Controlador do campo de email
                    onChanged:
                        (value) {}, // Manipulador de evento para a alteração do texto
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(216, 150, 118, 245))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(216, 150, 118, 245))),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(216, 150, 118, 245),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // Campo de entrada de senha
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller:
                        senhaController, // Controlador do campo de senha
                    obscureText: IsObscureText, // Texto da senha oculto ou não
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 0),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(216, 150, 118, 245))),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(216, 150, 118, 245))),
                        hintText: "Senha",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromARGB(216, 150, 118, 245),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            // Ao tocar no ícone de olho
                            setState(() {
                              IsObscureText =
                                  !IsObscureText; // Alternar entre texto oculto e visível
                            });
                          },
                          child: Icon(
                            IsObscureText
                                ? Icons.visibility_off
                                : Icons
                                    .visibility, // Ícone do olho para oculto ou visível
                            color: const Color.fromARGB(216, 150, 118, 245),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  // Botão de login
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        if (emailController.text.trim() == "email" &&
                            senhaController.text.trim() == "123") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Erro ao efetuar o login")));
                        }
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(216, 150, 118, 245),
                        ),
                      ),
                      child: const Text(
                        "ENTRAR",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                      color: Color.fromARGB(255, 37, 200, 209),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Criar conta",
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 179, 176),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
