import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
class expandable_floating extends StatefulWidget {
  const expandable_floating({Key? key}) : super(key: key);
  @override
  State<expandable_floating> createState() => _expandable_floatingState();
}

class _expandable_floatingState extends State<expandable_floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable Floating action button"),
      ),
      body: Center(
        child: Container(
          child: Text("Expandable Floating action button In Flutter"),
        ),
      ),
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton:ExpandableFab(
          child: const Icon(Icons.chat_bubble),
          duration: const Duration(milliseconds: 500),
          expandedFabSize: ExpandableFabSize.regular,
          distance: MediaQuery.of(context).size.width<600? MediaQuery.of(context).size.width * 0.52
              :MediaQuery.of(context).size.width * 0.22,
          type: ExpandableFabType.fan,
          overlayStyle: ExpandableFabOverlayStyle(
              blur: 1.0
          ),

          closeButtonStyle: const ExpandableFabCloseButtonStyle(
            child: Icon(Icons.cancel,size: 55,),
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
          ),
          foregroundColor: Colors.white,
          backgroundColor: Colors.grey,
          children: [
            FloatingActionButton.small(

              child:const FaIcon(FontAwesomeIcons.github),
              onPressed: () {
                print("Presed"); //Do Something

              },
              backgroundColor: Colors.grey,
            ),
            FloatingActionButton.small(
              child: const FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {
                print("Presed"); //Do Something
              },
              backgroundColor: Colors.grey,
            ),
            FloatingActionButton.small(

              child: const FaIcon(FontAwesomeIcons.youtube),
              onPressed: () {
    print("Presed"); //Do Something


    },

              backgroundColor: Colors.grey,
            ),
            FloatingActionButton.small(
              child: const FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () {
                print("Presed"); //Do Something
              },
              backgroundColor: Colors.grey,
            ),
            FloatingActionButton.small(
              child: const FaIcon(FontAwesomeIcons.solidMessage),
              onPressed: () {

              },
              backgroundColor: Colors.grey,
            ),

          ],
        )
    );
  }
}
