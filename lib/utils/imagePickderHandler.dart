import 'dart:io';
import 'dart:async';

import 'package:expo_bike/widgets/imagePickerDialog.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerHandler {
  ImagePickerDialog imagePicker;
  AnimationController _controller;
  ImagePickerListener _listener;

  ImagePickerHandler(this._listener, this._controller);

  openCamera() async {
    imagePicker.dismissDialog();
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    
    cropImage(image);
  }

  openGallery() async {
    imagePicker.dismissDialog();
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    cropImage(image);
  }

  void init() {
    imagePicker = new ImagePickerDialog(this, _controller);
    imagePicker.initState();
  }

  Future cropImage(File image) async {
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
    );

    _listener.userImage(croppedFile);
  }

  showDialog(BuildContext context) {
    imagePicker.getImage(context);
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await ImagePicker.retrieveLostData();

    if (response == null) {
      return;
    }

    if (response.file != null) {
      if (response.type == RetrieveType.video) {
        return;
      } else {
        _listener.userImage(response.file);
      }
    } else {
      return;
    }
  }
}

abstract class ImagePickerListener {
  userImage(File _image);
}