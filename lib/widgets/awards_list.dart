import 'package:flutter/material.dart';
import 'package:test_project/bloc/get_awards_bloc.dart';
import 'package:test_project/bloc/get_staff_awards_bloc.dart';
import 'package:test_project/elemets/loader.dart';
import 'package:test_project/model/awards.dart';
import 'package:test_project/model/awards_response.dart';
import 'package:test_project/model/staff_awards.dart';
import 'package:test_project/model/staff_awards_response.dart';

class AwardsList extends StatefulWidget {
  @override
  _AwardsListState createState() => _AwardsListState();
}

class _AwardsListState extends State<AwardsList> {
  @override
  void initState() {
    super.initState();
    getAwards.getAwards();
    getStaffAwards.getStaffAwards();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<StaffAwardsResponse>(
        stream: getStaffAwards.subject.stream,
        builder:
            (context, AsyncSnapshot<StaffAwardsResponse> snapshotStaffAwards) {
          return StreamBuilder<AwardsResponseModel>(
              stream: getAwards.subject.stream,
              builder:
                  (context, AsyncSnapshot<AwardsResponseModel> snapshotAwards) {
                if (snapshotStaffAwards.hasData) {
                  if (snapshotStaffAwards.data!.error.length > 0) {
                    return buildLoadingWidget();
                  }
                  return _buildAwardsList(
                      snapshotStaffAwards.data, snapshotAwards.data);
                } else if (snapshotStaffAwards.hasError) {
                  return buildLoadingWidget();
                } else {
                  return buildLoadingWidget();
                }
              });
        });
  }

  Widget _buildAwardsList(StaffAwardsResponse? staffAwardsResponse,
      AwardsResponseModel? awardsResponseModel) {
    List<StaffAwards> staffAwards = staffAwardsResponse!.awards;
    List<AwardsModel> awards = awardsResponseModel!.data;
    return ListView(
        shrinkWrap: true,
        primary: false,
        children: awards.map((awards) {
          return ListTile(
            leading: Tab(
                icon: staffAwards.every((element) => element.type != awards.id)
                    ? Image.network('${awards.imgAlt}')
                    : Image.network('${awards.img}')),
            title: Text(awards.title),
            subtitle: Text('${awards.comment}'),
          );
        }).toList());
  }
}
