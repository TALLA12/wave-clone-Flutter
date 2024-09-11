import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(QRScannerApp());
}

class QRScannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Scanner'),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.black, // Fond noir pour simuler la caméra
            ),
            Positioned(
              top: -70,
              right: 15,
              left: 15,
              child: GestureDetector(
                onTap: () {
                  // Ouvrir l'application de scan QR
                  _launchQRScanner();
                },
                child: Container(
                  height: 180,
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("images/wave.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fonction pour ouvrir l'application de scan QR
  Future<void> _launchQRScanner() async {
    const url = 'https://www.example.com'; // URL fictive
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
