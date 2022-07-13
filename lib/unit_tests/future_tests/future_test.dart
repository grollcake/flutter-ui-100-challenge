// RandomUser Service
// 무작위 사용자 정보를 무한히 공급하는 서비스

import 'dart:convert';
import 'package:main_app/unit_tests/future_tests/random_user_model.dart';
import 'package:http/http.dart' as http;

class FutureTest {
  final String _defaultSeed;
  final int _fetchCount;
  final int _sleepMilliSeconds;
  int _pageNo = 1;

  FutureTest({defaultSeed = 'grollcake', fetchCount = 10, sleepMilliSeconds = 0})
      : _defaultSeed = defaultSeed,
        _fetchCount = fetchCount,
        _sleepMilliSeconds = sleepMilliSeconds;

  Future<List<RandomUser>> getRandomUsers({int page = 1}) async {
    return _fetchRandomUsers(page: page);
  }

  Future<List<RandomUser>> getRandomUsersMore() async {
    _pageNo++;
    return _fetchRandomUsers(page: _pageNo);
  }

  Uri _fetchUrl({required int page}) {
    var url = Uri.https('randomuser.me', '/api',
        {'nat': 'gb', 'seed': _defaultSeed, 'page': page.toString(), 'results': _fetchCount.toString()});
    print(url.toString());
    return url;
  }

  Future<List<RandomUser>> _fetchRandomUsers({required int page}) async {

    if (_sleepMilliSeconds > 0) {
      print('[DEBUG] Delaying $_sleepMilliSeconds milliseconds..');
      await Future.delayed(Duration(milliseconds: _sleepMilliSeconds));
    }

    var url = _fetchUrl(page: page);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> users = jsonDecode(response.body)['results'];
      List<RandomUser> randomUsers = users.map((user) => RandomUser.fromJson(user)).toList();
      return randomUsers;
    } else {
      return Future.error('Abnormal response code: ${response.statusCode}');
    }
  }
}

void main() async {
  FutureTest futureTest = FutureTest(defaultSeed: 'grollcake', fetchCount: 5, sleepMilliSeconds: 300);
  List<RandomUser> _users = await futureTest.getRandomUsers();

  _users.asMap().forEach((key, value) {
    print("$key: " + value.toString());
  });

  List<RandomUser> _users2 = await futureTest.getRandomUsersMore();

  _users2.asMap().forEach((key, value) {
    print("$key: " + value.toString());
  });

  List<RandomUser> _users3 = await futureTest.getRandomUsers(page: 2);

  _users3.asMap().forEach((key, value) {
    print("$key: " + value.toString());
  });
}
