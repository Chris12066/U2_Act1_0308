import 'package:alcantara0308/pantallas0308/panel0308/widgets0308/item_partes.dart';
import 'package:flutter/material.dart';

class PanelPantalla0308 extends StatelessWidget {
  const PanelPantalla0308({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff70726f),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://e7.pngegg.com/pngimages/678/580/png-clipart-car-computer-icons-motor-vehicle-service-auto-parts-text-logo-thumbnail.png"),
            ),
          )
        ],
        title: Text('Autopartes Alcantara 0308',
            style: TextStyle(color: Color(0xffffffff))),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Que quieres ver",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Color(0xff000000))),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/Chris12066/Img_iOS/main/FlutterFlowA12/partes.jpg"))),
          ),
          ListTile(
            title: Text("Partes"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itempartes()],
          ))
        ],
      ),
    );
  }
}
