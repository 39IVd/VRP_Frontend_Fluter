import 'package:VRP_Frontend_Flutter/objects/user.dart';

class Event {
// 사건명 일시 상태
// 장소
// 설명
// 참여중인 사람들 리스트
  String eventName, status, place, description;
  List<User> userList;
  var date;
  Event(
      {String eventName,
      var date,
      String status,
      String place,
      String description,
      List userList}) {
    this.eventName = eventName;
    this.date = date;
    this.status = status;
    this.place = place;
    this.description = description;
    this.userList = userList;
  }
}

List<Event> dummyEventList = [
  Event(
      eventName: '화양동 살인사건',
      date: '2020년 9월 2일',
      status: '기소완료',
      place: '서울 광진구 화양동',
      description: '이것은 사건의 상세 설명이다.',
      userList: dummyUserList),
  Event(
      eventName: '자양동 강도사건',
      date: '2020년 9월 3일',
      status: '수사중',
      place: '서울 광진구 자양동',
      description: '이것은 사건의 상세 설명이다.',
      userList: dummyUserList),
  Event(
      eventName: '구의동 연쇄살인',
      date: '2020년 9월 4일',
      status: '기소완료',
      place: '서울 광진구 구의동',
      description: '이것은 사건의 상세 설명이다.',
      userList: dummyUserList),
  Event(
      eventName: '사건명4',
      date: '2020년 9월 5일',
      status: '재판중',
      place: '서울 광진구 군자동',
      description: '이것은 사건의 상세 설명이다.',
      userList: dummyUserList),
];
