import 'dart:developer';

import 'package:custom_dropdown/custom_dropdown.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const List<String> _list = [
  'Developer',
  'Designer',
  'Consultant',
  'Student',
];

class Job {
  final String name;
  final IconData icon;
  const Job(this.name, this.icon);

  @override
  String toString() {
    return name;
  }
}

const List<Job> _list2 = [
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
];

class Job2 with CustomDropdownListFilter {
  final String name;
  final IconData icon;
  const Job2(this.name, this.icon);

  @override
  String toString() {
    return name;
  }

  @override
  bool filter(String query) {
    return name.toLowerCase().contains(query.toLowerCase());
  }
}

const List<Job2> _list3 = [
  Job2('Developer', Icons.developer_mode),
  Job2('Designer', Icons.design_services),
  Job2('Consultant', Icons.account_balance),
  Job2('Student', Icons.school),
];

class Pair {
  final String text;
  final IconData icon;
  const Pair(this.text, this.icon);

  @override
  String toString() {
    return text;
  }
}

const List<Pair> _list4 = [
  Pair('Developer', Icons.developer_board),
  Pair('Designer', Icons.deblur_sharp),
  Pair('Consultant', Icons.money_off),
  Pair('Student', Icons.edit),
];

class DemoCustomDropdownPage extends StatelessWidget {
  const DemoCustomDropdownPage({super.key});

  // This should be a call to the api or service or similar
  @protected
  Future<List<Pair>> _getFakeRequestData(String query) async {
    return await Future.delayed(const Duration(seconds: 1), () {
      return _list4.where((e) {
        return e.text.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dropdown Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomDropdown<String>(
                hintText: 'Select job role',
                items: _list,
                initialItem: _list[0],
                onChanged: (value) {
                  log('changing value to: $value');
                },
              ),
              CustomDropdown<Job>(
                hintText: 'Select job role',
                items: _list2,
                onChanged: (value) {
                  log('changing value to: $value');
                },
              ),
              CustomDropdown<Job>.multiSelect(
                items: _list2,
                initialItems: _list2.take(1).toList(),
                onListChanged: (value) {
                  log('changing value to: $value');
                },
              ),
              CustomDropdown<Job2>.search(
                hintText: 'Select job role',
                items: _list3,
                excludeSelected: false,
                onChanged: (value) {
                  log('changing value to: $value');
                },
              ),
              CustomDropdown<Job2>.multiSelectSearch(
                hintText: 'Select job role',
                items: _list3,
                onListChanged: (value) {
                  log('changing value to: $value');
                },
              ),
              CustomDropdown<Pair>.searchRequest(
                futureRequest: _getFakeRequestData,
                hintText: 'Search job role',
                items: _list4,
                onChanged: (value) {
                  log('changing value to: $value');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
