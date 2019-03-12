class Profile {

    final String gender;
    final Name name;
    final Location location;
    final Picture picture;
    final String email;

    Profile(this.gender,this.name,this.location,this.picture,this.email);

    factory Profile.fromJson(Map<String,dynamic> parsedJson){

      return new Profile(
        parsedJson['gender'],
        Name.fromJson(parsedJson['name']),
        Location.fromJson(parsedJson['location']),
        Picture.fromJson(parsedJson['picture']),
        parsedJson['email']
      );

    }
}

class Name{

    final String title;
    final String firstName;
    final String lastName;

    Name(this.title,this.firstName,this.lastName);

    factory Name.fromJson(Map<String,dynamic> parsedJson){
      return new Name(
        parsedJson['title'],
        parsedJson['first'],
        parsedJson['last']
      );
    }

}

class Location{

    final String street;
    final String city;
    final String state;
    final String postcode;

    Location(this.street,this.city,this.state,this.postcode);

    factory Location.fromJson(Map<String,dynamic> parsedJson){
      return new Location(
        parsedJson['street'],
        parsedJson['city'],
        parsedJson['state'],
        parsedJson['postcode'].toString()
      );
    }

}


class Picture{

    final String addressPicture;

    Picture(this.addressPicture);
    
    factory Picture.fromJson(Map<String,dynamic> parsedJson){
      return new Picture(
        parsedJson['medium']
      );
    }

}