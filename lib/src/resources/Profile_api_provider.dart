import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' show Client;

import '../models/Profile.dart';

class Profile_api_provider{
  Client client =Client();

  Future<List<Profile>> fetchRandProfile() async{
    final response = await client.get('https://randomuser.me/api/?results=25');
    if (response.statusCode == 200) {
      Map<String,dynamic> parsedJson = json.decode(response.body);
      List resultsFromJson = parsedJson['results'];
      List<Profile> profiles = List<Profile>();
      for (var i = 0; i < resultsFromJson.length; i++) {
        profiles.add(new Profile.fromJson(resultsFromJson[i]));
      }
      return profiles;
    } else {
      throw Exception('some problems occuerd contact IT sup :v');
    }
  }
  
}
