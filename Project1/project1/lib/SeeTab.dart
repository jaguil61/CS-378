// Builds the SeeTab
import 'package:flutter/material.dart';
import 'ListBuilder.dart';
import 'CounterNum.dart';

List<String> _imageList = <String> ['images/art_institute.jpg', 'images/the_bean.jpg', 'images/shed_aquarium.jpg'];
List<String> _nameList = <String> ['Art Institute', 'The Bean', 'Shed Aquarium'];
List<String> _descList = <String> [
  'Located in downtown Chicago, the Art Institute is one of the worlds great art museums'
      '\n\n111 S Michigan Ave, Chicago, IL 60603',
  'Huge outdoor sculpture shaped like a bean & allowing for views from its many mirrored sides.'
      '\n\n201 E Randolph St · In Millennium Park',
  'State-of-the-art indoor aquarium, famous for its variety of habitats & views of Lake Michigan.'
      '\n\n1200 S DuSable Lake Shore Dr'];
List<CounterNum> _counterList = <CounterNum> [CounterNum(0), CounterNum(0), CounterNum(0)];

Widget seeTab(BuildContext context) {
  return buildList(context, _imageList, _nameList, _descList, _counterList);
}

