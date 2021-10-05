import 'package:rxdart/rxdart.dart';
import 'package:test_project/model/staff_awards_response.dart';
import 'package:test_project/repository/repository.dart';

class GetStaffAwards {
  final Repository _repository = Repository();
  final BehaviorSubject<StaffAwardsResponse> _subject =
      BehaviorSubject<StaffAwardsResponse>();

  getStaffAwards() async {
    StaffAwardsResponse response = await _repository.getStaffAwards();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<StaffAwardsResponse> get subject => _subject;
}

final getStaffAwards = GetStaffAwards();
