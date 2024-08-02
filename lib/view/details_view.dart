import 'package:doctor_app/widget/doctor.dart';
import 'package:flutter/material.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF4894FE),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text("Doctor Details", style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: const Icon(Icons.details),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox.expand(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('Bottom sheet'),
                            ElevatedButton(
                              child: const Text('Close'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.error),
              onPressed: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: true, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('AlertDialog Title'),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('This is a demo alert dialog.'),
                            Text('Would you like to approve of this message?'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                const DoctorWidget(
                  title: "Dr. Ahmed Ali",
                  subTitle: "Doctor",
                  time: "10:00 - 8:00 AM",
                  date: "Sunday, 15 June",
                  titleColor: Color(0xFF0D1B34),
                  subTitleColor: Color(0xFF8696BB),
                  dateColor: Color(0xFFFEB052),
                  timeColor: Color(0xFF4894FE),
                ),
                SizedBox(height: 40),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    50,
                    (index) => Container(
                      color: Colors.orange,
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      child: Text(index.toString()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
