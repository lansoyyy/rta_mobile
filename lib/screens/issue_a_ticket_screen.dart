import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rta_mobile/screens/signature_page.dart';
import 'package:rta_mobile/utils/data.dart';
import 'package:rta_mobile/widgets/button_widget.dart';
import 'package:rta_mobile/widgets/textfield_widget.dart';

class IssueTicketScreen extends StatefulWidget {
  Map data;

  IssueTicketScreen({
    super.key,
    required this.data,
  });

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

  // Map to keep track of which violations are selected
  Map<String, bool> checkedValues = {};

  @override
  void initState() {
    super.initState();
    for (var violation in violations) {
      checkedValues[violation.code] = false;
    }

    setState(() {
      name.text = widget.data['name'];
      gender.text = widget.data['gender'];
      nationality.text = widget.data['nationality'];
      address.text = widget.data['address'];
      license.text = widget.data['licenseno'];
      expiry.text = widget.data['expirationdate'];
      bday.text = widget.data['bday'];
      weight.text = widget.data['weight'];
      height.text = widget.data['height'];
      // bloodtype.text = widget.data['bloodtype'];
    });
  }

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
            dynamic mydata = snapshot.data;
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
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
                                            color: const Color.fromARGB(
                                                255,
                                                220,
                                                220,
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
                                              color: Color.fromARGB(
                                                  255, 0, 4, 233),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    StreamBuilder<QuerySnapshot>(
                                        stream: FirebaseFirestore.instance
                                            .collection('Tickets')
                                            .snapshots(),
                                        builder: (BuildContext context,
                                            AsyncSnapshot<QuerySnapshot>
                                                snapshot) {
                                          if (snapshot.hasError) {
                                            print(snapshot.error);
                                            return const Center(
                                                child: Text('Error'));
                                          }
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const Padding(
                                              padding: EdgeInsets.only(top: 50),
                                              child: Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                color: Colors.black,
                                              )),
                                            );
                                          }

                                          final data = snapshot.requireData;
                                          return Positioned(
                                            left: 39,
                                            top: 0,
                                            child: Container(
                                              height: 40,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255,
                                                      220,
                                                      220,
                                                      220), // Pale gray color

                                                  width: 1,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'TCT ${DateTime.now().year} - ${data.docs.length}',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromARGB(
                                                        255, 0, 4, 233),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                    Positioned(
                                      left: 158,
                                      top: 0,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255,
                                                220,
                                                220,
                                                220), // Pale gray color

                                            width: 1,
                                          ),
                                          color: const Color.fromARGB(255, 255,
                                              255, 255), // Example color
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Date',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 0, 4, 233),
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
                                            color: const Color.fromARGB(
                                                255,
                                                220,
                                                220,
                                                220), // Pale gray color

                                            width: 1,
                                          ),
                                          color: Colors.white, // Example color
                                        ),
                                        child: Center(
                                          child: Text(
                                            DateFormat.yMMMd()
                                                .format(DateTime.now()),
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 0, 4, 233),
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
                                            color: const Color.fromARGB(
                                                255,
                                                220,
                                                220,
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
                                              color: Color.fromARGB(
                                                  255, 0, 4, 233),
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
                                            color: const Color.fromARGB(
                                                255,
                                                220,
                                                220,
                                                220), // Pale gray color

                                            width: 1,
                                          ),
                                          color: Colors.white, // Example color
                                        ),
                                        child: Center(
                                          child: Text(
                                            DateFormat.jm()
                                                .format(DateTime.now()),
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 0, 4, 233),
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
                                  width: 175,
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
                                  width: 150,
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
                              ],
                            ),
                            SizedBox(
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
                                width: 300,
                                child: ListView.builder(
                                  itemCount: violations.length,
                                  itemBuilder: (context, index) {
                                    var violation = violations[index];
                                    return SizedBox(
                                      width: 300,
                                      height: 75,
                                      child: CheckboxListTile(
                                        title: Text(
                                          '${violation.code} - ${violation.description}',
                                          style: const TextStyle(
                                            fontFamily: 'Regular',
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Fine: ${violation.fines.values.elementAt(0)}',
                                          style: const TextStyle(
                                            fontFamily: 'Regular',
                                            color: Colors.green,
                                            fontSize: 12,
                                          ),
                                        ),
                                        value: checkedValues[violation.code],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            checkedValues[violation.code] =
                                                value!;
                                          });
                                        },
                                      ),
                                    );
                                  },
                                )),

                            const SizedBox(height: 10),

                            //MOBILE NUMBER
                            TextFieldWidget(
                              inputType: TextInputType.number,
                              controller: number,
                              label: 'Contact Number',
                            ),

                            const SizedBox(height: 25),

                            //NEXT BUTTON
                            StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection('Tickets')
                                    .snapshots(),
                                builder: (BuildContext context,
                                    AsyncSnapshot<QuerySnapshot> snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return const Center(child: Text('Error'));
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const Padding(
                                      padding: EdgeInsets.only(top: 50),
                                      child: Center(
                                          child: CircularProgressIndicator(
                                        color: Colors.black,
                                      )),
                                    );
                                  }

                                  final data = snapshot.requireData;
                                  return ButtonWidget(
                                    label: 'NEXT',
                                    onPressed: () {
                                      List vio = [];
                                      for (var violation in violations) {
                                        if (checkedValues[violation.code] ==
                                            true) {
                                          setState(() {
                                            vio.add({
                                              'code': violation.code,
                                              'desc': violation.description,
                                              'fine': violation.fines.values
                                                  .elementAt(0),
                                            });
                                          });
                                        }
                                      }
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignaturePage(
                                                    myname:
                                                        '${mydata['lname']}, ${mydata['fname']}',
                                                    data: {
                                                      'violations': vio,
                                                      'name': name.text,
                                                      'address': address.text,
                                                      'licenseno': license.text,
                                                      'expiry': expiry.text,
                                                      'gender': gender.text,
                                                      'bday': bday.text,
                                                      'nationality':
                                                          nationality.text,
                                                      'height': height.text,
                                                      'weight': weight.text,
                                                      'plateno': plateno.text,
                                                      'owner': owner.text,
                                                      'owneraddress':
                                                          owneraddress.text,
                                                      'maker': maker.text,
                                                      'color': color.text,
                                                      'model': model.text,
                                                      'number': number.text,
                                                      'licensetype':
                                                          _selectedOption,
                                                      'refno':
                                                          'TCT ${DateTime.now().year} - ${data.docs.length}',
                                                    },
                                                  )));
                                    },
                                  );
                                }),
                          ],
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
