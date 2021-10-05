import 'package:test_project/model/awards_response.dart';
import 'package:test_project/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class GetAwards {
  final Repository _repository = Repository();
  final BehaviorSubject<AwardsResponseModel> _subject =
      BehaviorSubject<AwardsResponseModel>();

  getAwards() async {
    AwardsResponseModel response = await _repository.getAwards();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<AwardsResponseModel> get subject => _subject;
}

final getAwards = GetAwards();
