import 'dart:async';
import 'Profile_api_provider.dart';
import '../models/Profile.dart';

class Repository {
  final profile_api_provider = Profile_api_provider() ;

  Future<List<Profile>> fetchRandProfile() => 
  profile_api_provider.fetchRandProfile();
}