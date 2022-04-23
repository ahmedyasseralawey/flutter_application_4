// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:camera/camera.dart';

late List<CameraDescription> cameras;

class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  // List<CameraDescription> myCameras;

//   const camera({ Key? key ,this.myCameras, this.title}) : super(key: key);
// final String title;
  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  late CameraController cameracontroller ;
  //  late
    Future<void> ? cameraValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cameracontroller = new CameraController(cameras[0], ResolutionPreset.high);
    cameraValue = cameracontroller.initialize();
    // controller.initialize().then((_) =>  {
    //   if (!mounted){
      // return;
    //   }
    //   setSta
    
    // });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
