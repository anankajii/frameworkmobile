import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'data/api_provider.dart';
import 'model/popular_movies.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final api = ApiProvider();
  late Future<PopularMovies> movies;

  @override
  void initState() {
    super.initState();
    movies = api.getPopularMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Popular Movies")),
      body: FutureBuilder<PopularMovies>(
        future: movies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount:
              snapshot.data!.results.length,
              itemBuilder: (context, index) {
                final movie =
                snapshot.data!.results[index];

                return Card(
                  margin:
                  const EdgeInsets.all(10),
                  child: ListTile(
                    leading:
                    CachedNetworkImage(
                      imageUrl:
                      "https://image.tmdb.org/t/p/w500${movie.posterPath}",
                      width: 50,
                    ),
                    title: Text(movie.title),
                    subtitle: Text(
                        "Rating: ${movie.voteAverage}"),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
                child: Text("Error"));
          }
          return const Center(
              child: CircularProgressIndicator());
        },
      ),
    );
  }
}