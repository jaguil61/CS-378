import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'PageBuilder.dart';
import 'CounterNum.dart';

//Handles the the image qualities
//InkWell also makes the image clickable and provides feedback https://api.flutter.dev/flutter/material/InkWell-class.html
InkWell _buildImage(BuildContext context, String theImagePath, String theImageName, String theDescription, CounterNum theCounterNum){
  timeDilation = 2.0; // The time the Hero transition takes

  return InkWell(
    borderRadius: BorderRadius.circular(100),
      child: Hero(
        tag: theImagePath,
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
          decoration: BoxDecoration( // Image Shadow
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12.withOpacity(0.65),
                    spreadRadius: -25,
                    blurRadius: 20
                )]
          ),
          child: CircleAvatar( // Image Border
              radius: 65,
              backgroundColor: const Color(0xffA9B3C7),
              child: CircleAvatar( // The Image
                  radius: 60,
                  backgroundImage: AssetImage(theImagePath)
              )
          )
        )
      ),
    onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => TabPage(imageName: theImageName, imagePath: theImagePath,
              description: theDescription, counterNum: theCounterNum,))
        );
     } // onTap
  );
}

//Builds the List of images using rows
ListView buildList(BuildContext context, List <String> imageList, List <String> nameList, List <String> descList, List<CounterNum> counterList) {
  return ListView.builder(
      padding: const EdgeInsets.only(top: 60),
      itemCount: imageList.length,
      itemBuilder: (BuildContext context, int i){
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _buildImage(context, imageList[i], nameList[i], descList[i], counterList[i]),
            Text(nameList[i], style: const TextStyle(fontSize: 16, color: Color(0xffD4E1FA)))
          ]
        );
      } // itemBuilder
  );
}
