import 'package:connexion/pages/signup.dart';
import 'package:connexion/widgets/input.dart';
import 'package:connexion/widgets/square.dart';
import 'package:flutter/material.dart';

class connexion extends StatefulWidget {
  const connexion({super.key});

  @override
  State<connexion> createState() => _connexionState();
}

class _connexionState extends State<connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  "connexion",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text("Bienvenue à nouveau dans votre application"),

                SizedBox(height: 25),
                Form(
                  child: Column(
                    children: [
                      Input(
                        label: "Mail",
                        hint: "veiullez saisir votre addresse",
                      ),
                      Input(label: "Mot de pass", hint: "votre mot de pass"),

                      SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Se connecter"),
                        ),
                      ),
                      SizedBox(height: 15),

                      Row(
                        children: [
                          Expanded(child: Divider(thickness: 0.5)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("ou continuer avec"),
                          ),
                          Expanded(child: Divider(thickness: 0.5)),
                        ],
                      ),
                      SizedBox(height: 5),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Square(path: "assets/images/google.png"),
                          SizedBox(width: 10),
                          Square(path: "assets/images/apple.png"),
                        ],
                      ),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Pas de compte ? "),
                          GestureDetector(
                            onTap: () {},
                            child: TextButton(
                              child: Text(
                                "Inscrivez-vous",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Signup();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
