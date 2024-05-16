import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rta_mobile/screens/home_screen.dart';
import 'package:rta_mobile/screens/issue_a_ticket_screen.dart';
import 'package:rta_mobile/screens/issue_selection_screen.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Stream<DocumentSnapshot> userData = FirebaseFirestore.instance
        .collection('Users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .snapshots();
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
      body: StreamBuilder<DocumentSnapshot>(
          stream: userData,
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: Text('Loading'));
            } else if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong'));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            dynamic data = snapshot.data;
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Container(
                        height: 250,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 1, 30, 1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              'assets/images/icon1.png',
                                              height: 130,
                                              fit: BoxFit.contain,
                                            ),
                                            const SizedBox(width: 10),
                                            Image.asset(
                                              'assets/images/Group 13.1.png',
                                              height: 220,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),

                                        //RTA OFFICER
                                        const Positioned(
                                          top:
                                              35, // Adjusted spacing from the top to 50
                                          left:
                                              120, // Adjusted spacing from the left to 20
                                          child: SizedBox(
                                            height: 40,
                                            child: Center(
                                              child: Text(
                                                'RTA Officer:',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Positioned(
                                          top:
                                              35, // Adjusted spacing from the top to 50
                                          left:
                                              235, // Adjusted spacing from the left to 20
                                          child: SizedBox(
                                            height: 35,
                                            child: Center(
                                              child: Text(
                                                '${data['lname']}, ${data['fname']}',
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 235, 27, 27),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        //BADGE ID #
                                        const Positioned(
                                          top:
                                              65, // Adjusted spacing from the top to 50
                                          left:
                                              120, // Adjusted spacing from the left to 20
                                          child: SizedBox(
                                            height: 40,
                                            child: Center(
                                              child: Text(
                                                'Badge ID #:',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Positioned(
                                          top:
                                              65, // Adjusted spacing from the top to 50
                                          left:
                                              260, // Adjusted spacing from the left to 20
                                          child: SizedBox(
                                            height: 40,
                                            child: Center(
                                              child: Text(
                                                data['badge'],
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 235, 27, 27),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        //Station
                                        const Positioned(
                                          top:
                                              95, // Adjusted spacing from the top to 50
                                          left:
                                              120, // Adjusted spacing from the left to 20
                                          child: SizedBox(
                                            height: 40,
                                            child: Center(
                                              child: Text(
                                                'Station:',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Positioned(
                                          top:
                                              95, // Adjusted spacing from the top to 50
                                          left:
                                              240, // Adjusted spacing from the left to 20
                                          child: SizedBox(
                                            height: 40,
                                            child: Center(
                                              child: Text(
                                                data['station'],
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 235, 27, 27),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        //Position
                                        const Positioned(
                                          top:
                                              125, // Adjusted spacing from the top to 50
                                          left:
                                              120, // Adjusted spacing from the left to 20
                                          child: SizedBox(
                                            height: 40,
                                            child: Center(
                                              child: Text(
                                                'Position:',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Positioned(
                                          top:
                                              125, // Adjusted spacing from the top to 50
                                          left:
                                              245, // Adjusted spacing from the left to 20
                                          child: SizedBox(
                                            height: 40,
                                            child: Center(
                                              child: Text(
                                                data['position'],
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 235, 27, 27),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

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
                              builder: (context) =>
                                  const IssueSelectionScreen()));
                        },
                        elevation: 5,
                        child: const Text(
                          'ISSUE A TICKET',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2.5,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // RULES REGULATIONS AND PENALTIES
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minWidth: 350,
                        height: 60,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        onPressed: () {},
                        elevation: 5,
                        child: const Text(
                          'RULES REGULATIONS & PENALTIES',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2.5,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      //RTA INFORMATION
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minWidth: 350,
                        height: 60,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        onPressed: () {},
                        elevation: 5,
                        child: const Text(
                          'RTA INFORMATION',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2.5,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      //SIGN OUT
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minWidth: 350,
                        height: 60,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: const Text(
                                      'Logout Confirmation',
                                      style: TextStyle(
                                          fontFamily: 'QBold',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    content: const Text(
                                      'Are you sure you want to Logout?',
                                      style: TextStyle(fontFamily: 'QRegular'),
                                    ),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(true),
                                        child: const Text(
                                          'Close',
                                          style: TextStyle(
                                              fontFamily: 'QRegular',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () async {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeScreen()));
                                        },
                                        child: const Text(
                                          'Continue',
                                          style: TextStyle(
                                              fontFamily: 'QRegular',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ));
                        },
                        elevation: 5,
                        child: const Text(
                          'SIGN OUT',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF44336),
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
