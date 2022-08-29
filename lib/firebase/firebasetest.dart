import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class FirebaseTest extends StatefulWidget {
  const FirebaseTest({Key? key}) : super(key: key);

  @override
  State<FirebaseTest> createState() => _FirebaseTestState();
}

class _FirebaseTestState extends State<FirebaseTest> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  var name = '#####';
  var age = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Get.to(FirebaseTest());
          },
          child: const Text('firebase test'),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(name),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    DocumentSnapshot test1docData = await fireStore
                        .collection('Test')
                        .doc('test1doc')
                        .get();
                    setState(() {
                      name = test1docData['name'];
                      age = test1docData['age'];
                    });
                  },
                  child: const Text('firebase 데이터 불러오기')),
            ],
          ),
        ),
      ),
    );
  }
}
