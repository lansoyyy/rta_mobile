import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<String> addRecord(
  name,
  address,
  licenseno,
  expiry,
  gender,
  licensetype,
  bday,
  nationality,
  height,
  weight,
) async {
  final docUser =
      FirebaseFirestore.instance.collection('Records').doc(licenseno);

  final json = {
    'name': name,
    'address': address,
    'licenseno': licenseno,
    'expiry': expiry,
    'gender': gender,
    'bday': bday,
    'nationality': nationality,
    'height': height,
    'weight': weight,
    'licensetype': licensetype,
    'uid': FirebaseAuth.instance.currentUser!.uid,
    'id': docUser.id,
    'day': DateTime.now().day,
    'month': DateTime.now().month,
    'year': DateTime.now().year,
    'dateTime': DateTime.now(),
  };

  await docUser.set(json);
  return docUser.id;
}
