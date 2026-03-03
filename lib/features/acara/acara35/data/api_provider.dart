import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/popular_movies.dart';

class ApiProvider {

  final String apiKey = "728a64c0649a8ccafee45edfe269597f";
  final String baseUrl =
      "https://api.themoviedb.org/3";

  Future<PopularMovies> getPopularMovies() async {
    final response = await http.get(
      Uri.parse(
        "$baseUrl/movie/popular?api_key=$apiKey",
      ),
    );

    if (response.statusCode == 200) {
      return PopularMovies.fromJson(
          jsonDecode(response.body));
    } else {
      throw Exception("Failed load data");
    }
  }
}