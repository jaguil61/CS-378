// Builds the EatTab
import 'package:flutter/material.dart';
import 'ListBuilder.dart';
import 'CounterNum.dart';

List<String> _imageList = <String> ['images/canes.jpeg', 'images/jims.jpg', 'images/stax_cafe.jpg'];
List<String> _nameList = <String> ['Raising Canes', 'Jims', 'Stax Cafe'];
List<String> _descList = <String> [
  'Raising Canes Chicken Fingers is an American fast-food restaurant chain specializing in chicken fingers'
      '\n\n1620 W Harrison St, Chicago, IL 60612',
  'Old-school 24/7 hotdog stand (started in 1939) boasting the original Maxwell Street Polish sausage.'
      '\n\n1250 S Union Ave, Chicago, IL 60607',
  'Casual eatery serving breakfast classics all day plus fresh juice, smoothies & a small lunch menu.'
      '\n\n1401 W Taylor St, Chicago, IL 60607'];
List<CounterNum> _counterList = <CounterNum> [CounterNum(0), CounterNum(0), CounterNum(0)];


Widget eatTab(BuildContext context) {
  return buildList(context, _imageList, _nameList, _descList, _counterList);
}
