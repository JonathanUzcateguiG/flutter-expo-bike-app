import 'package:flutter/material.dart';
import 'package:expo_bike/services/storageservice.dart';

class BottomFixedLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService.getBottomBarImage(),
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 68,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    snapshot.data
                  ),
                  fit: BoxFit.cover
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}