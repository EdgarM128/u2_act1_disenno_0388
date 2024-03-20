import 'package:flutter/material.dart';
import 'package:meraz0388/pantallas0388/panel0388/widget0388/item_play0388.dart';

class PanelPantalla0388 extends StatelessWidget {
  const PanelPantalla0388({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PlayStation Meraz0388',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/EdgarM128/Img_IOS/main/iconPlay.jpg"),
              ),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Amigos",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    border: InputBorder.none,
                    prefix: Icon(
                      Icons.search,
                      color: Colors.brown,
                    )),
              ),
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/EdgarM128/Img_IOS/main/apps.1955.14321970625114405.1d07d0b2-cd93-4202-aa4c-3a3b8640c4e3.jpg"))),
            ),
            ListTile(
              title: Text("Top Jugadores"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: Icon(Icons.filter_list_outlined),
            ),
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.all(15),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 15,
                children: [for (int i = 1; i <= 4; i++) const Itemplay()],
              ),
            ),
          ],
        ));
  }
}
