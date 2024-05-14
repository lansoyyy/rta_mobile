import 'package:flutter/material.dart';
import 'package:rta_mobile/screens/issue_a_ticket_screen.dart';
import 'package:rta_mobile/screens/issue_selection_screen.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

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
                          padding: const EdgeInsets.fromLTRB(15, 1, 30, 1),
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
                                          'RTA Officer',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top:
                                        40, // Adjusted spacing from the top to 50
                                    left:
                                        220, // Adjusted spacing from the left to after the right edge of the blue box
                                    child: Container(
                                      height: 25,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const Positioned(
                                    top:
                                        35, // Adjusted spacing from the top to 50
                                    left:
                                        235, // Adjusted spacing from the left to 20
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          'Dela Cruz, Juan',
                                          style: TextStyle(
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
                                          'Badge ID #',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top:
                                        70, // Adjusted spacing from the top to 50
                                    left:
                                        220, // Adjusted spacing from the left to after the right edge of the blue box
                                    child: Container(
                                      height: 25,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const Positioned(
                                    top:
                                        65, // Adjusted spacing from the top to 50
                                    left:
                                        260, // Adjusted spacing from the left to 20
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          '123457',
                                          style: TextStyle(
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
                                          'Station ',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top:
                                        100, // Adjusted spacing from the top to 50
                                    left:
                                        220, // Adjusted spacing from the left to after the right edge of the blue box
                                    child: Container(
                                      height: 25,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const Positioned(
                                    top:
                                        95, // Adjusted spacing from the top to 50
                                    left:
                                        240, // Adjusted spacing from the left to 20
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          'USTP Highway',
                                          style: TextStyle(
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
                                          'Position',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top:
                                        130, // Adjusted spacing from the top to 50
                                    left:
                                        220, // Adjusted spacing from the left to after the right edge of the blue box
                                    child: Container(
                                      height: 25,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const Positioned(
                                    top:
                                        125, // Adjusted spacing from the top to 50
                                    left:
                                        245, // Adjusted spacing from the left to 20
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          'Team Leader',
                                          style: TextStyle(
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
                        builder: (context) => const IssueSelectionScreen()));
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
                  onPressed: () {},
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
      ),
    );
  }
}
