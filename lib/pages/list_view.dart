import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../core/entities/datos.dart';
import '../data/repositories/repo.dart';
//Ronel Alejandro Caamal Casanova

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tournaments = TournamentRepository.getTournaments();

    return Scaffold(
      //appbar
      appBar: AppBar(
        title: const Text('Calculadora'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: const Text("Platillos", style: TextStyle(fontSize: 20)),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      margin: const EdgeInsets.only(right: 100),
                      alignment: Alignment.centerLeft,
                      child: const Text("Imagen"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      alignment: Alignment.center,
                      child: const Text("Platillo"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.centerRight,
                      child: const Text("Accion"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: tournaments.length,
                itemBuilder: (BuildContext context, int index) =>
                    createListTile(context, tournaments[index]),
                separatorBuilder: (_, __) => const Divider(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                physics: const BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        backgroundColor: Colors.black,
        icon: const Icon(Icons.balance),
        label: const Text("Sumar"),
// ignore: avoid_print
        onPressed: () => print("Suma"),
      ),
    );
  }

  createListTile(BuildContext context, Tournament tournament) => ListTile(
        leading: FadeInImage.assetNetwork(
          placeholder: "images/loading.gif",
          image: tournament.urlProfile,
          fit: BoxFit.cover,
          width: 100,
          height: double.infinity,
        ),
        title: Text(tournament.name),
        trailing: const Icon(Icons.delete),
        onTap: () => displayDialogIos(context, tournament),
      );
}

displayDialogAndroid(BuildContext context, Tournament tournament) => showDialog(
    // barrierDismissible: true,
    barrierColor: Colors.red[50],
    context: context,
    builder: (context) => AlertDialog(
          elevation: 10,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0))),
          alignment: Alignment.center,
          title: const Text("Tournament"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(tournament.name),
              const SizedBox(
                height: 10,
              ),
              FadeInImage.assetNetwork(
                  placeholder: "images/loading.gig",
                  image: tournament.urlProfile),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ));

displayDialogIos(BuildContext context, Tournament tournament) {
  showCupertinoDialog(
      // barrierDismissible: true,
      context: context,
      builder: (context) => AlertDialog(
            elevation: 10,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0))),
            title: const Text("Platillo"),
            alignment: Alignment.center,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(tournament.name),
                const SizedBox(
                  height: 10,
                ),
                FadeInImage.assetNetwork(
                    placeholder: "images/loading.gif",
                    image: tournament.urlProfile),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("OK"),
              ),
            ],
          ));
}