import 'package:flutter/material.dart';
import 'model/Media.dart';

class MediaListItem extends StatelessWidget{
  final Media media;
  MediaListItem(this.media);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                FadeInImage.assetNetwork(
                placeholder: "assets/placeholder.jpg",
                image: media.getBackDropUrl(),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200.0,
                fadeInDuration: const Duration(milliseconds: 40),
              ),
              Positioned(
                left: 0.0,
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900]?.withOpacity(0.5),
                  ),
                  constraints: const BoxConstraints.expand(
                    height: 110.0
                  ),
                ),
              ),
              Positioned(
                left: 10.0,
                bottom: 40.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        media.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        )
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        media.getGenres(),
                        style: const TextStyle(color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Sinopsis: "+media.overview,
                        style: const TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Colors.white
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Fecha de salida: "+ media.releaseDate,
                        style: const TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Colors.white
                        ),
                   
                      ),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}