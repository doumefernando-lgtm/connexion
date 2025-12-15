import 'package:connexion/widgets/article.dart';
import 'package:connexion/widgets/input.dart';
import 'package:connexion/widgets/progress.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Qu'a tu acheté?", style: TextStyle(fontSize: 20)),

                    Input(label: "Nom du produit", hint: "Nom du produit"),
                  ],
                ),

                actions: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Ajouter"),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
      appBar: AppBar(title: Text("Bienvenue")),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "11 décembre 2025",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text("Budget dépensé à"),
                subtitle: Text(
                  "Tu es sur la bonne voie il reste 250 dh a dépensé",
                ),
                trailing: Progress(),
              ),
            ),

            SizedBox(height: 15),
            Text(
              "Articles achété aujourdhui",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            Expanded(
              child: ListView(
                children: [
                  Article(),
                  Article(),
                  Article(),
                  Article(),
                  Article(),
                  Article(),
                  Article(),
                  Article(),
                  Article(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
