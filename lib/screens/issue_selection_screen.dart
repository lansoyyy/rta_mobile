import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rta_mobile/screens/issue_a_ticket_screen.dart';
import 'package:rta_mobile/screens/scan_screen.dart';
import 'package:rta_mobile/widgets/text_widget.dart';
import 'package:rta_mobile/widgets/textfield_widget.dart';

class IssueSelectionScreen extends StatefulWidget {
  const IssueSelectionScreen({super.key});

  @override
  State<IssueSelectionScreen> createState() => _IssueSelectionScreenState();
}

class _IssueSelectionScreenState extends State<IssueSelectionScreen> {
  final license = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

//ISSUE A TICKET
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minWidth: 350,
              height: 150,
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ScanScreen()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const IssueTicketScreen()));
              },
              elevation: 5,
              child: const Text(
                'CAPTURE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2.5,
                ),
              ),
            ),
            const SizedBox(height: 25),

//ISSUE A TICKET
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minWidth: 350,
              height: 150,
              color: Colors.blue,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFieldWidget(
                            controller: license,
                            label: 'Input License',
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: TextWidget(
                            text: 'Close',
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) =>
                            //         const IssueTicketScreen()));
                          },
                          child: TextWidget(
                            text: 'Continue',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              elevation: 5,
              child: const Text(
                'INPUT LICENSE NUMBER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
