class User {
  final String givenName;
  final String familyName;
  final String imageUrl;

  const User({
    required this.givenName,
    required this.familyName,
    required this.imageUrl,
  });
}

const User currentUser = User(
  givenName: 'Andy',
  familyName: 'Chak',
  imageUrl:
      'https://media.istockphoto.com/photos/cityscape-of-shinbashi-area-viewing-street-picture-id1302070873?s=612x612',
);

const List<User> _allUsers = [
  User(
    givenName: 'Kez',
    familyName: 'Ann',
    imageUrl:
        'https://media.istockphoto.com/photos/digital-3d-illustration-of-a-toon-girl-picture-id1186723101?s=612x612',
  ),
  User(
    givenName: 'john',
    familyName: 'Doe',
    imageUrl:
        'https://media.istockphoto.com/photos/cute-furry-monster-picture-id1149268842?s=612x612',
  ),
  User(
    givenName: 'Jane',
    familyName: 'Doe',
    imageUrl:
        'https://media.istockphoto.com/photos/digital-3d-illustration-of-a-toon-girl-picture-id1186723101?s=612x612',
  ),
  User(
    givenName: 'Jeff',
    familyName: 'Doe',
    imageUrl:
        'https://media.istockphoto.com/photos/cute-furry-monster-picture-id1149268842?s=612x612',
  ),
  User(
    givenName: 'eric',
    familyName: 'Ann',
    imageUrl:
        'https://media.istockphoto.com/photos/digital-3d-illustration-of-a-toon-girl-picture-id1186723101?s=612x612',
  ),
  User(
    givenName: 'jack',
    familyName: 'Doe',
    imageUrl:
        'https://media.istockphoto.com/photos/cute-furry-monster-picture-id1149268842?s=612x612',
  ),
];

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

const List<Room> upcomingRoomsList = [
  Room(
    club: 'Golang',
    name: 'Gofiber framework',
    time: '2:00pm',
  ),
  Room(
    club: 'Vue.js',
    name: 'Vue3 framework',
    time: '12:00pm',
  ),
  Room(
    club: 'Aws',
    name: 'S3 bucket',
    time: '9:00am',
  ),
];

final List<Room> roomsList = [
  Room(
    club: 'User Interfaces',
    name: 'Welcome to the user interfaces Q&A',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 3).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Golang Server',
    name: 'Web Sockets discussions',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 3).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'AWS',
    name: 'Deploying web applications to AWS',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 3).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
];
