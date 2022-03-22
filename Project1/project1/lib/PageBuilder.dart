// Builds the page after the image is clicked

import 'package:flutter/material.dart';
import 'CounterNum.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key, required this.imageName, required this.imagePath, required this.description, required this.counterNum}) : super(key: key);

  final String imageName;
  final String imagePath;
  final String description;
  final CounterNum counterNum;

  @override
  State<StatefulWidget> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32353b),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(125),
          child: AppBar(
            centerTitle: true,
            title: Text(widget.imageName, style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black)),
            flexibleSpace: Container( //The image background for the appbar
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75), //round the edges of the image too
                image: const DecorationImage (
                  image: AssetImage('images/willis_tower.png'),
                  fit: BoxFit.fill
                )
              )
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75)),
          )
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(widget.imageName, style: const TextStyle(fontSize: 30.0, color: Color(0xffD4E1FA)))
            ),
            Hero(
                tag: widget.imagePath,
                child: _buildImage(context, widget.imagePath, widget.imageName)
            ),
            Padding(
                padding: const EdgeInsets.all(30),
                child: Text(widget.description, style: const TextStyle(color: Color(0xffD4E1FA)))
            )
          ], // Children
        )
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            widget.counterNum.incrementCounter();
            final snackBar = SnackBar(
                content: Text('${widget.imageName} name has been liked ${widget.counterNum.getCounter()} time(s)'),
                action: SnackBarAction( // Closes the snack bar
                    label: 'Close',
                    onPressed: (){}
                )
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Icon(
              Icons.thumb_up,
              color: Color(0xffD4E1FA))
      ),
    );
  }

  Container _buildImage(BuildContext context, String imagePath, String imageName) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration( // The image shadow
        shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.65),
              spreadRadius: -25,
              blurRadius: 20
            )
          ] // boxShadow
      ),
      child: CircleAvatar( // teh image border
        radius: 205,
        backgroundColor: const Color(0xffA9B3C7),
        child: CircleAvatar( // The Image
          radius: 200,
          backgroundImage: AssetImage(imagePath)
          )
      )
    );
  }
}
