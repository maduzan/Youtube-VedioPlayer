import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:ticket/model/youmodel.dart';

class Apicall {
  final _serchsbj = BehaviorSubject<String>();
  final _videoStream = BehaviorSubject<List<Youmodel>>();

  Stream<List<Youmodel>> get videoStream => _videoStream.stream;
  Sink<String> get searchSink => _serchsbj.sink;

  Apicall() {
    _serchsbj
        .debounceTime(const Duration(milliseconds: 400))
        .distinct()
        .switchMap((query) => serchvedio(query).asStream())
        .listen((videos) {
          _videoStream.add(videos);
        });
  }
  Future<List<Youmodel>> serchvedio(String query) async {
    final String api = 'AIzaSyB3uEQ3I0n4gK5S_8wCE8W7Dw1Hk2B0jJQ';

    final Dio _dio = Dio();
    final url =
        'https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&q=$query&key=$api';

    final response = await _dio.get(url);

    if (response.statusCode == 200) {
      final jsonData = response.data;
      List items = jsonData['items'];
      return items.map((e) => Youmodel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load videos');
    }
  }
}
