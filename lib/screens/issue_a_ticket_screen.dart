import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rta_mobile/screens/signature_page.dart';
import 'package:rta_mobile/widgets/button_widget.dart';
import 'package:rta_mobile/widgets/textfield_widget.dart';

class IssueTicketScreen extends StatefulWidget {
  const IssueTicketScreen({super.key});

  @override
  State<IssueTicketScreen> createState() => _IssueTicketScreenState();
}

class _IssueTicketScreenState extends State<IssueTicketScreen> {
  final name = TextEditingController();
  final address = TextEditingController();
  final license = TextEditingController();
  final expiry = TextEditingController();
  final bday = TextEditingController();
  final nationality = TextEditingController();
  final height = TextEditingController();
  final weight = TextEditingController();
  final gender = TextEditingController();

  final plateno = TextEditingController();
  final owner = TextEditingController();
  final owneraddress = TextEditingController();
  final maker = TextEditingController();
  final model = TextEditingController();
  final color = TextEditingController();
  final number = TextEditingController();
  String _selectedOption = 'Prof';
  String selectedViolation = 'Sample 1';

  final List<String> violations = [
    "Speeding",
    "Running a red light",
    "Illegal parking",
    "Not wearing a seatbelt",
    "Using a mobile phone while driving",
    "Driving without a license",
    "Driving under the influence",
    "Reckless driving",
  ];

  // Map to keep track of which violations are selected
  final Map<String, bool> selectedViolations = {};

  @override
  void initState() {
    super.initState();
    // Initialize all violations as not selected
    for (var violation in violations) {
      selectedViolations[violation] = false;
    }
  }

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
                                  child: Center(
                                    child: Text(
                                      'TCT ${DateTime.now().year} - 00001',
                                      style: const TextStyle(
                                        fontSize: 12,
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
                                  child: Center(
                                    child: Text(
                                      DateFormat.yMMMd().format(DateTime.now()),
                                      style: const TextStyle(
                                        fontSize: 12,
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
                                  child: Center(
                                    child: Text(
                                      DateFormat.jm().format(DateTime.now()),
                                      style: const TextStyle(
                                        fontSize: 12,
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'VIOLATOR INFORMATION',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget(
                        width: 325,
                        controller: name,
                        label: 'Fullname',
                      ),
                      TextFieldWidget(
                        width: 325,
                        controller: address,
                        label: 'Address',
                      ),
                      TextFieldWidget(
                        width: 325,
                        controller: license,
                        label: 'License No.',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFieldWidget(
                            width: 150,
                            controller: expiry,
                            label: 'Expiry',
                          ),
                          TextFieldWidget(
                            width: 150,
                            controller: gender,
                            label: 'Gender',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                            child: RadioListTile<String>(
                              title: const Text(
                                'Prof',
                                style: TextStyle(
                                  fontFamily: 'Bold',
                                ),
                              ),
                              value: 'Prof',
                              groupValue: _selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  _selectedOption = value!;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: RadioListTile<String>(
                              title: const Text(
                                'Non Prof',
                                style: TextStyle(
                                  fontFamily: 'Bold',
                                ),
                              ),
                              value: 'Non Prof',
                              groupValue: _selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  _selectedOption = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: RadioListTile<String>(
                          title: const Text(
                            'SP',
                            style: TextStyle(
                              fontFamily: 'Bold',
                            ),
                          ),
                          value: 'SP',
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFieldWidget(
                            width: 150,
                            controller: bday,
                            label: 'Birthday',
                          ),
                          TextFieldWidget(
                            width: 150,
                            controller: nationality,
                            label: 'Nationality',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFieldWidget(
                            inputType: TextInputType.number,
                            width: 150,
                            controller: height,
                            label: 'Height (cm)',
                          ),
                          TextFieldWidget(
                            inputType: TextInputType.number,
                            width: 150,
                            controller: weight,
                            label: 'Weight (kg)',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      const SizedBox(height: 30),

//VEHICLE INFORMATION
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'VEHICLE INFORMATION',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget(
                        width: 325,
                        controller: plateno,
                        label: 'Plate No.',
                      ),
                      TextFieldWidget(
                        width: 325,
                        controller: owner,
                        label: 'Owner',
                      ),
                      TextFieldWidget(
                        width: 325,
                        controller: owneraddress,
                        label: 'Owner Address',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFieldWidget(
                            width: 150,
                            controller: maker,
                            label: 'Maker',
                          ),
                          TextFieldWidget(
                            width: 150,
                            controller: color,
                            label: 'Color',
                          ),
                        ],
                      ),
                      TextFieldWidget(
                        width: 325,
                        controller: model,
                        label: 'Model',
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      const SizedBox(height: 30),

//TRAFFIC VIOLATION
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom:
                            0, // Adjusted to occupy the full height of the outer container
                        child: Container(
                          // Adjusted height to fill the available space in the Stack
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 236, 234, 234),
                            border: Border.all(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          'TRAFFIC VIOLATION',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      SizedBox(
                          height: 275,
                          width: double.infinity,
                          child: ListView(
                            children: violations.map((violation) {
                              return SizedBox(
                                width: 300,
                                height: 35,
                                child: CheckboxListTile(
                                  title: Text(violation),
                                  value: selectedViolations[violation],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      selectedViolations[violation] = value!;
                                    });
                                  },
                                ),
                              );
                            }).toList(),
                          )),

                      const SizedBox(height: 10),

//MOBILE NUMBER
                      TextFieldWidget(
                        inputType: TextInputType.number,
                        controller: number,
                        label: 'Mobile Number',
                      ),

                      const SizedBox(height: 25),

//NEXT BUTTON
                      ButtonWidget(
                        label: 'NEXT',
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignaturePage()));
                        },
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
