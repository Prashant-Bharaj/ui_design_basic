import 'package:flutter/material.dart';
import 'movie.dart';

class MovieListView extends StatelessWidget {

  final List<Movie> movieList = Movie.getMovie();

/*final List movies = [
  "God father",
"Blade Runner",
"The Avenger",
"Avatar",
"I am Legend",
"300",
"Vikings",
"The Shawshank Redemption"
];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('movies list') ,
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(movieList[0].images[0]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(13.9)
                    ),
                  ),
                ),
                title: Text(movieList[index].title),
                subtitle: Text('${movieList[0].title}'),
                trailing: Text('...'),
                //onTap: () => debugPrint('movie name = ${movies.elementAt(index)}'),
                onTap: () => Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MoviesDetails(movieName: movieList.elementAt(index).director,)
                )),
              ),
            );
          }),
    );
  }
}

class MoviesDetails extends StatelessWidget {

  final String movieName;

  const MoviesDetails({Key key, this.movieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title : Text('movies')
      ),
      body: Container(
        color: Colors.blueGrey.shade400,
        child: Center(
          child: RaisedButton(
            child: Text('Go back ${this.movieName}'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
