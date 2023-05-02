import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Movie {
  final String title;
  final String director;
  final String image;
  final String link;

  Movie({
    required this.title,
    required this.director,
    required this.image,
    required this.link});
}

class MovieListPage extends StatefulWidget {
  const MovieListPage({Key? key}) : super(key: key);

  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final List<Movie> _movies = [
    Movie(
      title: 'The Shawshank Redemption',
      director: 'Frank Darabont',
      image: 'https://picsum.photos/id/1041/400/600',
      link: 'https://www.imdb.com/title/tt0111161/',
    ),
    Movie(
      title: 'The Godfather',
      director: 'Francis Ford Coppola',
      image: 'https://picsum.photos/id/1035/400/600',
      link: 'https://www.imdb.com/title/tt0068646/',
    ),
    Movie(
      title: 'The Dark Knight',
      director: 'Christopher Nolan',
      image: 'https://picsum.photos/id/1029/400/600',
      link: 'https://www.imdb.com/title/tt0468569/',
    ),
    Movie(
      title: '12 Angry Men',
      director: 'Sidney Lumet',
      image: 'https://picsum.photos/id/1015/400/600',
      link: 'https://www.imdb.com/title/tt0050083/',
    ),
    Movie(
      title: 'Schindler\'s List',
      director: 'Steven Spielberg',
      image: 'https://picsum.photos/id/1014/400/600',
      link: 'https://www.imdb.com/title/tt0108052/',
    ),
    Movie(
      title: 'The Lord of the Rings: The Return of the King',
      director: 'Peter Jackson',
      image: 'https://picsum.photos/id/1062/400/600',
      link: 'https://www.imdb.com/title/tt0167260/',
    ),
    Movie(
      title: 'Pulp Fiction',
      director: 'Quentin Tarantino',
      image: 'https://picsum.photos/id/1060/400/600',
      link: 'https://www.imdb.com/title/tt0110912/',
    ),
    Movie(
      title: 'Forrest Gump',
      director: 'Robert Zemeckis',
      image: 'https://picsum.photos/id/1059/400/600',
      link: 'https://www.imdb.com/title/tt0109830/',
    ),
    Movie(
      title: 'Inception',
      director: 'Christopher Nolan',
      image: 'https://picsum.photos/id/1074/400/600',
      link: 'https://www.imdb.com/title/tt1375666/',
    ),
    Movie(
      title: 'The Green Mile',
      director: 'Frank Darabont',
      image: 'https://picsum.photos/id/1080/400/600',
      link: 'https://www.imdb.com/title/tt0120689/',
    ),
    Movie(
      title: 'The Social Network',
      director: 'David Fincher',
      image: 'https://picsum.photos/id/1082/400/600',
      link: 'https://www.imdb.com/title/tt1285016/',
    ),
    Movie(
      title: 'The Silence of the Lambs',
      director: 'Jonathan Demme',
      image: 'https://picsum.photos/id/1027/400/600',
      link: 'https://www.imdb.com/title/tt0102926/',
    ),
    Movie(
      title: 'Goodfellas',
      director: 'Martin Scorsese',
      image: 'https://picsum.photos/id/1022/400/600',
      link: 'https://www.imdb.com/title/tt0099685/',
    ),
    Movie(
      title: 'Saving Private Ryan',
      director: 'Steven Spielberg',
      image: 'https://picsum.photos/id/1036/400/600',
      link: 'https://www.imdb.com/title/tt0120815/',
    ),
    Movie(
      title: 'Interstellar',
      director: 'Christopher Nolan',
      image: 'https://picsum.photos/id/1043/400/600',
      link: 'https://www.imdb.com/title/tt0816692/',
    ),
    Movie(
      title: 'The Prestige',
      director: 'Christopher Nolan',
      image: 'https://picsum.photos/id/1055/400/600',
      link: 'https://www.imdb.com/title/tt0482571/',
    ),
    Movie(
      title: 'Gladiator',
      director: 'Ridley Scott',
      image: 'https://picsum.photos/id/1057/400/600',
      link: 'https://www.imdb.com/title/tt0172495/',
    ),
    Movie(
      title: 'The Departed',
      director: 'Martin Scorsese',
      image: 'https://picsum.photos/id/1032/400/600',
      link: 'https://www.imdb.com/title/tt0407887/',
    ),
    Movie(
      title: 'The Usual Suspects',
      director: 'Bryan Singer',
      image: 'https://picsum.photos/id/1051/400/600',
      link: 'https://www.imdb.com/title/tt0114814/',
    ),
    Movie(
      title: 'The Lion King',
      director: 'Roger Allers, Rob Minkoff',
      image: 'https://picsum.photos/id/1042/400/600',
      link: 'https://www.imdb.com/title/tt0110357/',
    ),
  ];

  final List<Movie> _favorites = [];

  void _toggleFavorite(Movie movie) {
    setState(() {
      if (_favorites.contains(movie)) {
        _favorites.remove(movie);
      } else {
        _favorites.add(movie);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie List'),
      ),
      body: ListView.builder(
        itemCount: _movies.length,
        itemBuilder: (context, index) {
          final movie = _movies[index];
          return ListTile(
            leading: Image.network(movie.image),
            title: Text(movie.title),
            subtitle: Text(movie.director),
            onTap: (){
              _launchUrl(movie.link);
            },
            trailing: IconButton(
              icon: Icon(
                _favorites.contains(movie) ? Icons.favorite : Icons.favorite_border,
              ),
              onPressed: () => _toggleFavorite(movie),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FavoriteMoviesPage(favoriteMovies: _favorites),
            ),
          );
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

class FavoriteMoviesPage extends StatelessWidget {
  final List<Movie> favoriteMovies;

  const FavoriteMoviesPage({Key? key, required this.favoriteMovies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Movies'),
      ),
      body: ListView.builder(
        itemCount: favoriteMovies.length,
        itemBuilder: (context, index) {
          final movie = favoriteMovies[index];
          return ListTile(
            leading: Image.network(movie.image),
            title: Text(movie.title),
            subtitle: Text(movie.director),
            onTap: (){
              _launchUrl(movie.link);
            },
          );
        },
      ),
    );
  }
  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}