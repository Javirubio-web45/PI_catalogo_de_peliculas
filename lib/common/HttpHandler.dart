import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Constants.dart';
import '../model/Media.dart';


class HttpHandler {

  final String _baseUrl = "api.themoviedb.org"; 
  final String _lenguaje = "es-ES";


  Future<dynamic> getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    return json.decode(response.body);
  }

  Future<List<Media>> fetchMovies(){
    var uri = Uri.https(_baseUrl, "3/movie/popular",{
      'api_key' : API_KEY,
      'page' : "1",
      'language' : _lenguaje
    });

    return getJson(uri).then(((data) => 
      data['results'].map<Media>((item) => Media(item)).toList()
    ));
  }
}