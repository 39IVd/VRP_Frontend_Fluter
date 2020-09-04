class User {
  String userName, email, role;
  User({String userName, String email, String role}) {
    this.userName = userName;
    this.email = email;
    this.role = role;
  }
}

List<User> dummyUserList = [
  User(userName: '이승주', email: 'paigelee@gmail.com', role: '팀장'),
  User(userName: '박종현', email: 'jonghyun@gmail.com', role: '관리자'),
  User(userName: '이종완', email: 'jongwan@gmail.com', role: '관리자'),
  User(userName: '임준혁', email: 'joonhyeok@gmail.com', role: '관리자'),
];
