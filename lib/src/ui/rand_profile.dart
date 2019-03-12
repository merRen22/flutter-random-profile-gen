import 'package:flutter/material.dart';
import '../models/Profile.dart';
import '../blocs/profile_bloc.dart';
import '../ui/widgets/largeFab.dart';

class RandProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchRandProfile();
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Profiles'),
      ),
      body: StreamBuilder(
        stream: bloc.allMovies,
        builder: (context, AsyncSnapshot<List<Profile>> snapshot) {
          if (snapshot.hasData) {
            return new ListView(
                children:
                    snapshot.data.map((item) => buildCard(item)).toList());
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        }
      ),
      floatingActionButton : LargeFab(
        onPressed: () => _showToast(context),
      ),
    );
  }

  Widget buildCard(Profile snapshot) {
    if (snapshot != null) {
      return new Card(
          elevation: 12.0,
          margin: EdgeInsets.all(8.0),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: <Widget>[
                new ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(snapshot.picture.addressPicture),
                      backgroundColor: Colors.purple[200],
                    ),
                    title: new Text(snapshot.name.title +
                        " " +
                        snapshot.name.lastName +
                        " " +
                        snapshot.name.firstName),
                    subtitle: new Text(snapshot.location.state +
                        " " +
                        snapshot.location.city +
                        " " +
                        snapshot.location.state)),
              ]));
    } else {
      return new Card(
          child: new Column(
              children: <Widget>[new ListTile(title: new Text("error :''v"))]));
    }
  }

  
  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text("button touched (´･ω･`)"),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}

