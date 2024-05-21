import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';
import 'package:rta_mobile/screens/next_screen.dart';
import 'package:rta_mobile/services/add_ticket.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as path;
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

import 'package:rta_mobile/widgets/toast_widget.dart';
import 'package:screenshot/screenshot.dart';

class SignaturePage extends StatefulWidget {
  Map data;

  SignaturePage({super.key, required this.data});

  @override
  _SignaturePageState createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  final GlobalKey<SignatureState> _signatureKey = GlobalKey();

  late File imageFile;

  late String imageURL = '';

  bool hasUploaded = false;
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Image.asset('assets/images/Group 13.png'),
        ),
        title: const Text(
          'ROADS AND TRAFFIC ADMINISTRATION',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: [
              Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 234, 234),
                  border: Border.all(
                    color: const Color.fromARGB(255, 245, 4, 4),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(1),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "Violator's Signature",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Screenshot(
                            controller: screenshotController,
                            child: SizedBox(
                              height: 300,
                              width: 350,
                              child: Container(
                                padding: const EdgeInsets.all(16.0),
                                color: Colors.white,
                                child: Signature(
                                  key: _signatureKey,
                                  strokeWidth: 3.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        _signatureKey.currentState?.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(350, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('CLEAR SIGNATURE'),
                    ),
                    hasUploaded
                        ? MaterialButton(
                            onPressed: () {
                              addTicket(
                                widget.data['violations'],
                                widget.data['name'],
                                widget.data['address'],
                                widget.data['licenseno'],
                                widget.data['expiry'],
                                widget.data['gender'],
                                widget.data['licensetype'],
                                widget.data['bday'],
                                widget.data['nationality'],
                                widget.data['height'],
                                widget.data['weight'],
                                widget.data['plateno'],
                                widget.data['owner'],
                                widget.data['owneraddress'],
                                widget.data['maker'],
                                widget.data['color'],
                                widget.data['model'],
                                widget.data['number'],
                                imageURL,
                              );
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NextScreen()));
                              showToast('Ticket recorded succesfully!');
                            },
                            minWidth: 350,
                            height: 40,
                            color: const Color.fromARGB(255, 55, 161, 248),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'ENTER',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        : MaterialButton(
                            onPressed: () async {
                              try {
                                // Capture the screenshot as a Uint8List
                                Uint8List? bytes =
                                    await screenshotController.capture();

                                if (bytes != null) {
                                  // Create a unique file name

                                  // Create a reference to the Firebase Storage location
                                  Reference storageReference =
                                      FirebaseStorage.instance.ref().child(
                                          'signatures/${DateTime.now()}.png');

                                  // Upload the screenshot
                                  UploadTask uploadTask =
                                      storageReference.putData(
                                          bytes,
                                          SettableMetadata(
                                              contentType: 'image/png'));

                                  // Get the download URL after the upload completes
                                  TaskSnapshot taskSnapshot = await uploadTask;

                                  setState(() async {
                                    imageURL =
                                        await taskSnapshot.ref.getDownloadURL();
                                    hasUploaded = true;
                                  });
                                } else {}
                              } catch (e) {
                                print(e);
                              }
                            },
                            minWidth: 350,
                            height: 40,
                            color: const Color.fromARGB(255, 55, 161, 248),
                            textColor: Colors.white,
                            shape: const RoundedRectangleBorder(),
                            child: const Text(
                              'CONFIRM',
                            ),
                          ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
