import 'package:flutter/material.dart';
//import 'common/HttpHandler.dart';
import 'media_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{

  List<BottomNavigationBarItem> _getFooterItems(){
      return[
        const BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up), label: "Populares"
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up), label: "Proximamente"
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up), label: "Mejor valoradas"
        )
      ];
    }

  // @override
  // void initState(){
  //   super.initState();
  //   _loadJson();
  // }

  // _loadJson() async{
  //   String data = await HttpHandler().fetchMovies();
  //   print(data);
  // }
  @override
  Widget build(BuildContext context){
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(
        title: const Text("PI. Catalogo de Peliculas"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: (){},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(child: Material()),
            const ListTile(
              title: Text("Peliculas"),
              trailing: Icon(Icons.local_movies),
            ),
            const Divider(
              height: 5.0,
            ),
            const ListTile(
              title: Text("Television"),
              trailing: Icon(Icons.live_tv),
            ),
            const Divider(
              height: 5.0,
            ),
            ListTile(
              title: const Text("Cerrar"),
              trailing: const Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
        
      ),
      body: PageView(
        children: const <Widget>[
          MediaList()
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );

    
  }
}