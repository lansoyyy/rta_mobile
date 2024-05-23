import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<String> addTicket(
  List violations,
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
  plateno,
  owner,
  owneraddress,
  maker,
  color,
  model,
  number,
  signature,
  refno,
) async {
  final docUser = FirebaseFirestore.instance.collection('Tickets').doc();

  final json = {
    'refno': refno,
    'violations': violations,
    'name': name,
    'address': address,
    'licenseno': licenseno,
    'expiry': expiry,
    'gender': gender,
    'bday': bday,
    'nationality': nationality,
    'height': height,
    'weight': weight,
    'plateno': plateno,
    'owner': owner,
    'owneraddress': owneraddress,
    'maker': maker,
    'color': color,
    'model': model,
    'number': number,
    'licensetype': licensetype,
    'uid': FirebaseAuth.instance.currentUser!.uid,
    'id': docUser.id,
    'day': DateTime.now().day,
    'month': DateTime.now().month,
    'year': DateTime.now().year,
    'dateTime': DateTime.now(),
    'signature': signature,
    'status': 'Standby'
  };

  await docUser.set(json);
  return docUser.id;
}
