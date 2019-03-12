import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/Profile.dart';

class ProfileBloc {
  final _repository = Repository();
  final _profileFetcher = PublishSubject<List<Profile>>();

  Observable<List<Profile>> get allMovies => _profileFetcher.stream;

  fetchRandProfile() async {
    List<Profile> itemModel = await _repository.fetchRandProfile();
    _profileFetcher.sink.add(itemModel);
  }

  dispose() {
    _profileFetcher.close();
  }
}

final bloc = ProfileBloc();