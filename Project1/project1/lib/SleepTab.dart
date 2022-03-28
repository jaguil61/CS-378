// Builds the SleepTab
import 'package:flutter/material.dart';
import 'ListBuilder.dart';
import 'CounterNum.dart';

List<String> _imageList = <String> ['images/swissotel.jpg', 'images/londonhouse.jpg', 'images/radisson.jpg'];
List<String> _nameList = <String> ['Swissotel Chicago', 'LondonHouse Chicago', 'Radisson Blue Aqua Hotel'];
List<String> _descList = <String> [
  'Designed by renowned Chicago architect Harry Weese, Swissotel Chicago is an award-winning luxury hotel'
      '\n\n323 E Wacker Dr',
  'Perfectly situated on N. Michigan Ave, the LondonHouse luxury hotel in Chicago, Curio Collection by Hilton'
      '\n\n85 E Wacker Dr, Chicago, IL 60601',
  'The Radisson Blu Aqua Hotel Chicago is the contemporary debut of Radisson Blu in North America.'
      '\n\n221 N Columbus Dr, Chicago, IL 60601'];
List<CounterNum> _counterList = <CounterNum> [CounterNum(0), CounterNum(0), CounterNum(0)];

Widget sleepTab(BuildContext context) {
  return buildList(context, _imageList, _nameList, _descList, _counterList);
}