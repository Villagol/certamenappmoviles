import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/doctor_page.dart';

class Doctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: Card(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/doctor.jpg'),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  '"The Doctor es un médico de guardia cuyo trabajo es tratar heridas y lesiones de sicarios, criminales y asesinos."',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(1)),
                onPressed: () {
                  MaterialPageRoute rutaDoctorPage =
                      MaterialPageRoute(builder: (context) {
                    return DoctorPage();
                  });
                  Navigator.push(context, rutaDoctorPage);
                },
                child: Text(
                  'Contactar',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
