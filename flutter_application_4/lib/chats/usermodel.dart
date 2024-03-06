class UserModel {
  final String name;
  final String image;
  final String lastMsg;
  final String time;

  UserModel(
      {required this.name,
      required this.image,
      required this.lastMsg,
      required this.time});
}

List<UserModel> chats = [
  UserModel(
      name: 'Mohammed',
      image:
          'https://images.unsplash.com/photo-1533450718592-29d45635f0a9?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8anBnfGVufDB8fDB8fHww',
      lastMsg: 'Hello ',
      time: '12:00 PM'),
  UserModel(
      name: 'Ahmed Yasser',
      image:
          'https://www.cleverfiles.com/howto/wp-content/uploads/2018/03/minion.jpg',
      lastMsg: 'Yalla Bina',
      time: '12:00 PM'),
  UserModel(
      name: 'Emy Ibrahim',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg',
      lastMsg: 'ok my friend',
      time: '12:00 PM'),
  UserModel(
      name: 'Doaa Moursi',
      image:
          'https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg',
      lastMsg: 'Hi',
      time: '12:00 PM'),
];
