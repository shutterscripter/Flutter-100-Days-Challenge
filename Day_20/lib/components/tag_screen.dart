import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';

class TagScreen extends StatefulWidget {
  const TagScreen({super.key});

  @override
  State<TagScreen> createState() => _TagScreenState();
}

class _TagScreenState extends State<TagScreen> {
  final List<String> _dogeNames = [
    '#random',
    '#design',
    '#feedback',
    '#device',
    '#plant',
  ];
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChipList(
        style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.black),
        listOfChipNames: _dogeNames,
        activeTextColorList: const [Colors.white],
        activeBgColorList: const [Colors.black],
        inactiveTextColorList: const [Colors.black],
        inactiveBorderColorList: const [Colors.grey],
        activeBorderColorList: const [Colors.grey],
        listOfChipIndicesCurrentlySeclected: [_currentIndex],
      ),
    );
  }
}
