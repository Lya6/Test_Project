import 'package:flutter/material.dart';
import 'package:test_project/widgets/awards_list.dart';

class AwardsScreen extends StatefulWidget {
  @override
  _AwardsScreenState createState() => _AwardsScreenState();
}

class _AwardsScreenState extends State<AwardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AwardsList());
  }
}
