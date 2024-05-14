import 'package:flutter/material.dart';
import 'package:rta_mobile/screens/signature_page.dart';

class IssueTicketScreen extends StatelessWidget {
  const IssueTicketScreen({super.key});

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
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 2000,
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
                      Container(
                        alignment: Alignment.center,
                        height: 90,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(1),
                            topRight: Radius.circular(1),
                          ),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            Image.asset(
                              'assets/images/Group 12.png',
                              height: 100,
                            ),
                            const Expanded(
                              child: Text(
                                'REPUBLIC OF THE PHILIPPINES\nCITY OF CAGAYAN DE ORO\nROADS AND TRAFFIC ADMINISTRATION\nTRAFFIC CITATION TICKET',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  letterSpacing: 0.5,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/Group 13.png',
                              height: 100,
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),

//No, Date and Tme
                      Container(
                        alignment: Alignment.topCenter,
                        height: 50,
                        width: 380,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    // Example color
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 220, 220,
                                          220), // Pale gray color

                                      width: 1,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'No.',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 0, 4, 233),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 39,
                                top: 0,
                                child: Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 220, 220,
                                          220), // Pale gray color

                                      width: 1,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'TCT 2023 - 00311',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 0, 4, 233),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 158,
                                top: 0,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 220, 220,
                                          220), // Pale gray color

                                      width: 1,
                                    ),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255), // Example color
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Date',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 0, 4, 233),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 197,
                                top: 0,
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 220, 220,
                                          220), // Pale gray color

                                      width: 1,
                                    ),
                                    color: Colors.white, // Example color
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Nov 23, 2023',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 0, 4, 233),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 286,
                                top: 0,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 220, 220,
                                          220), // Pale gray color

                                      width: 1,
                                    ),
                                    color: Colors.white, // Example color
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Time',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 0, 4, 233),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 325,
                                top: 0,
                                child: Container(
                                  height: 40,
                                  width: 54,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 220, 220,
                                          220), // Pale gray color

                                      width: 1,
                                    ),
                                    color: Colors.white, // Example color
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '1:35pm',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 0, 4, 233),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

//VIOLATOR INFORMATION
                      Container(
                        alignment: Alignment.topCenter,
                        height: 500,
                        width: 380,
                        child: Container(
                          height: 600,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE9E9E9),
                            border: Border.all(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10, // Adjusted spacing from the top to 10
                                left: 0, // Adjusted spacing from the left to 0
                                right:
                                    0, // Adjusted spacing from the right to 0
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical:
                                          3), // Optional padding for the inner box
                                  // Example color
                                  child: const Center(
                                    child: Text(
                                      'VIOLATOR INFORMATION',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 35, // Adjusted spacing from the top to 50
                                left:
                                    -10, // Adjusted spacing from the left to 20
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'First Name',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 40, // Adjusted spacing from the top to 50
                                left:
                                    90, // Adjusted spacing from the left to after the right edge of the blue box
                                child: Container(
                                  height: 30,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color:
                                          const Color.fromARGB(159, 49, 49, 49),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 75, // Adjusted spacing from the top to 50
                                left:
                                    -4, // Adjusted spacing from the left to 20
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Middle Name',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 80, // Adjusted spacing from the top to 50
                                left:
                                    90, // Adjusted spacing from the left to after the right edge of the blue box
                                child: Container(
                                  height: 30,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color:
                                          const Color.fromARGB(159, 49, 49, 49),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 115, // Adjusted spacing from the top to 50
                                left:
                                    -10, // Adjusted spacing from the left to 20
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Last Name',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 120, // Adjusted spacing from the top to 50
                                left:
                                    90, // Adjusted spacing from the left to after the right edge of the blue box
                                child: Container(
                                  height: 30,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color:
                                          const Color.fromARGB(159, 49, 49, 49),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 165, // Adjusted spacing from the top to 50
                                left:
                                    60, // Adjusted spacing from the left to after the right edge of the blue box
                                child: Container(
                                  height: 0,
                                  width: 265,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 112, 112, 112),
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 175, // Adjusted spacing from the top to 50
                                left:
                                    -10, // Adjusted spacing from the left to 20
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Address    ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 180, // Adjusted spacing from the top to 50
                                left:
                                    90, // Adjusted spacing from the left to after the right edge of the blue box
                                child: Container(
                                  height: 80,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color:
                                          const Color.fromARGB(159, 49, 49, 49),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 275, // Adjusted spacing from the top to 50
                                left:
                                    60, // Adjusted spacing from the left to after the right edge of the blue box
                                child: Container(
                                  height: 0,
                                  width: 265,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 112, 112, 112),
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 285, // Adjusted spacing from the top to 50
                                left:
                                    -10, // Adjusted spacing from the left to 20
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'License    ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 290, // Adjusted spacing from the top to 50
                                left:
                                    90, // Adjusted spacing from the left to after the right edge of the blue box
                                child: Container(
                                  height: 30,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color:
                                          const Color.fromARGB(159, 49, 49, 49),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top:
                                    325, // Adjusted spacing from the top to 325
                                left:
                                    -10, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Expiry       ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    330, // Adjusted spacing from the top to 320
                                left:
                                    90, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top:
                                    335, // Adjusted spacing from the top to 320
                                left:
                                    195, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                top:
                                    325, // Adjusted spacing from the top to 325
                                left:
                                    180, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Prof',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    335, // Adjusted spacing from the top to 320
                                left:
                                    245, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                top:
                                    325, // Adjusted spacing from the top to 325
                                left:
                                    245, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Non-Prof',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    335, // Adjusted spacing from the top to 320
                                left:
                                    325, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                top:
                                    325, // Adjusted spacing from the top to 325
                                left:
                                    306, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'SP',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top:
                                    365, // Adjusted spacing from the top to 325
                                left: -5, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Birthday       ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    370, // Adjusted spacing from the top to 320
                                left:
                                    90, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                top:
                                    365, // Adjusted spacing from the top to 325
                                left:
                                    180, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Nationality',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    370, // Adjusted spacing from the top to 320
                                left:
                                    265, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                top:
                                    405, // Adjusted spacing from the top to 325
                                left:
                                    -20, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Height',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    410, // Adjusted spacing from the top to 320
                                left:
                                    90, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                top:
                                    405, // Adjusted spacing from the top to 325
                                left:
                                    170, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Weight',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    410, // Adjusted spacing from the top to 320
                                left:
                                    265, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                top:
                                    445, // Adjusted spacing from the top to 325
                                left:
                                    -20, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Gender',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    450, // Adjusted spacing from the top to 320
                                left:
                                    90, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                top:
                                    445, // Adjusted spacing from the top to 325
                                left:
                                    180, // Adjusted spacing from the left to 0
                                child: SizedBox(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Restriction',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    450, // Adjusted spacing from the top to 320
                                left:
                                    265, // Adjusted spacing from the left to 105
                                child: Row(
                                  // Row for aligning checkbox and long white box horizontally
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              159, 49, 49, 49),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

//VEHICLE INFORMATION
                      Container(
                        alignment: Alignment.topCenter,
                        height: 490, // Adjusted height of the outer container
                        width: 380,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom:
                                  0, // Adjusted to occupy the full height of the outer container
                              child: Container(
                                // Adjusted height to fill the available space in the Stack
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 236, 234, 234),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top:
                                  15, // Adjust this value to control the vertical positioning of the text
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Text(
                                  'VEHICLE INFORMATION',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 35, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Plate no.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 40, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 75, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Owner',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 80, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 115, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Address',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 120, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 120,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 285, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Color',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 290, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 245, // Adjusted spacing from the top to 50
                              left: 212, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Model',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 250, // Adjusted spacing from the top to 50
                              left:
                                  260, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 245, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Make',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 250, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 285, // Adjusted spacing from the top to 50
                              left: 212, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Marking',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 290, // Adjusted spacing from the top to 50
                              left:
                                  260, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 335, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Place of \nViolation',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 340, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 130,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),

//TRAFFIC VIOLATION
                      Container(
                        alignment: Alignment.topCenter,
                        height: 200, // Adjusted height of the outer container
                        width: 380,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom:
                                  0, // Adjusted to occupy the full height of the outer container
                              child: Container(
                                // Adjusted height to fill the available space in the Stack
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 236, 234, 234),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top:
                                  10, // Adjust this value to control the vertical positioning of the text
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Text(
                                  'TRAFFIC VIOLATION',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 35, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Violation #1',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 40, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 75, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Violation #2',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 80, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 115, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Violation #3',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 120, // Adjusted spacing from the top to 50
                              left:
                                  90, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 155, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Add More+',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(220, 39, 150, 10),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),

//MOBILE NUMBER
                      Container(
                        alignment: Alignment.topCenter,
                        height: 80, // Adjusted height of the outer container
                        width: 380,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom:
                                  0, // Adjusted to occupy the full height of the outer container
                              child: Container(
                                // Adjusted height to fill the available space in the Stack
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 236, 234, 234),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 20, // Adjusted spacing from the top to 50
                              left: 10, // Adjusted spacing from the left to 20
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Mobile Number',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 25, // Adjusted spacing from the top to 50
                              left:
                                  100, // Adjusted spacing from the left to after the right edge of the blue box
                              child: Container(
                                height: 30,
                                width: 270,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(159, 49, 49, 49),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 150),

//NEXT BUTTON
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Set border color to black
                            width: 2, // Adjust the border width as needed
                          ),
                          // Adjust border radius as needed
                        ),
                        child: MaterialButton(
                          minWidth: 250,
                          height: 100,
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignaturePage()));
                          },
                          elevation: 5,
                          child: const Text(
                            'NEXT',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 2.5,
                            ),
                          ),
                        ),
                      ),
                    ],
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
