import 'package:flutter/material.dart';
import 'common/HttpHandler.dart';
import 'model/Media.dart';
import 'media_list_item.dart';

class MediaList extends StatefulWidget{
  const MediaList({Key? key}) : super(key: key);

  @override
  _MediaListState createState() => _MediaListState();
}
class _MediaListState extends State<MediaList>{
  final List<Media> _media = [];

  @override
  void initState(){
    super.initState();
    loadMovies();
  }

  void loadMovies() async {
    var movies = await HttpHandler().fetchMovies();
    setState(() {
      _media.addAll(movies);
    });


  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: ListView.builder(
        itemCount: _media.length,
        itemBuilder: (BuildContext context, int index){
          return MediaListItem(_media[index]);
        },
      ),
    );
  }
}