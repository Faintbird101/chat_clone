import 'package:chat_clone/modules/user_module.dart';

class Message {
  late final User sender;
  late final String time;
  late final String text;
  late final bool isLiked;
  late final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

final User currentUser =
    User(id: 0, name: "current user", ImageUrl: "assets/images/image1.jpg");

final User Zeke =
    User(id: 1, name: 'Zeke', ImageUrl: 'assets/images/image2.jpg');

final User Frank =
    User(id: 2, name: 'Frank', ImageUrl: 'assets/images/image3.jpg');

final User Allan =
    User(id: 3, name: 'Allan', ImageUrl: 'assets/images/image4.jpg');

final User Chelsea =
    User(id: 4, name: 'Chelsea', ImageUrl: 'assets/images/image5.jpg');

final User Nimo =
    User(id: 5, name: 'Nimo', ImageUrl: 'assets/images/image6.jpg');

List<User> favorites = [Zeke, Frank, Chelsea, Chelsea, Nimo, Allan];

List<Message> chats = [
  Message(
      sender: Zeke,
      time: '3:30 PM',
      text: 'hi dad',
      isLiked: true,
      unread: true),
  Message(
      sender: Frank,
      time: '1:20 PM',
      text: 'yooh',
      isLiked: false,
      unread: true),
  Message(
      sender: Allan,
      time: '2:10 PM',
      text: 'Bytha mlichukua ile cert yenyu',
      isLiked: false,
      unread: false),
  Message(
      sender: Nimo,
      time: '3:50 PM',
      text: 'uko home?',
      isLiked: false,
      unread: false),
  Message(
      sender: Chelsea,
      time: '10:30 AM',
      text: 'hey, morning.',
      isLiked: true,
      unread: true),
];

List<Message> messages = [
  Message(
      sender: Zeke,
      time: '3:50 PM',
      text: 'uko home?',
      isLiked: true,
      unread: true),
  Message(
      sender: currentUser,
      time: '3:54 PM',
      text: 'zii. Bytha mlichukua ile cert yenyu',
      isLiked: false,
      unread: true),
  Message(
      sender: Zeke,
      time: '4:00 PM',
      text: 'Eeeh tulichukua kitambo, we were among the first hadi kupewa.',
      isLiked: true,
      unread: true),
  Message(
      sender: currentUser,
      time: '4:10 PM',
      text: 'ooh thats nice🦾 and what about school?🤷‍♂️',
      isLiked: false,
      unread: true),
  Message(
      sender: Zeke,
      time: '4:10 PM',
      text: 'Magoha ana announce today wen tunarudi?',
      isLiked: false,
      unread: true),
];
