// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:camera/camera.dart';

class CameraCall extends StatefulWidget {
  const CameraCall({Key? key}) : super(key: key);

  @override
  State<CameraCall> createState() => _CameraCallState();
}

class _CameraCallState extends State<CameraCall> {
  late CameraController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(controller);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              // ]
            }),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.flash_off,
                            color: Colors.white,
                            size: 28,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.panorama_fish_eye_rounded,
                            color: Colors.white,
                            size: 20,
                          )),

                      // IconButton(onPressed: () {

                      // }, icon: Icon(Icons.panorama_fish_eye_rounded,color: Colors.white,size: 20,)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.flip_camera_ios,
                          color: Colors.white,
                          size: 28,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
