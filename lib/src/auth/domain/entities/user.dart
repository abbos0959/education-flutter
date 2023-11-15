import 'package:equatable/equatable.dart';

class LocalUser extends Equatable {
  const LocalUser({
    required this.uid,
    required this.email,
    required this.points,
    required this.fullName,
    required this.groipId,
    required this.enrolledCourseId,
    required this.following,
    required this.followers,
    required this.profilePic,
    required this.bio,
  });
  const LocalUser.empty()
      : this(
          uid: '',
          email: '',
          points: 0,
          fullName: '',
          groipId: const [],
          enrolledCourseId: const [],
          following: const [],
          followers: const [],
          profilePic: '',
          bio: '',
        );
  final String uid;
  final String email;
  final int points;
  final String fullName;
  final List<String> groipId;
  final List<String> enrolledCourseId;
  final List<String> following;
  final List<String> followers;
  final String? profilePic;
  final String? bio;

  @override
  List<Object?> get props => [
        uid,
        email,
        // points,
        // fullName,
        // groipId,
        // enrolledCourseId,
        // following,
        // followers,
        // profilePic,
        // bio,
      ];
  @override
  String toString() {
    return 'Localuser {uid :$uid,email :$email,points :'
        '$points,fullName :$fullName,points:$points,bio:$bio}';
  }
}
