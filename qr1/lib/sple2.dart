import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

//!  <uses-permission android:name="android.permission.QUERY_ALL_PACKAGES"/>

class QRSkaner extends StatefulWidget {
  const QRSkaner({super.key});

  @override
  State<QRSkaner> createState() => _QRSkanerState();
}

class _QRSkanerState extends State<QRSkaner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String scanedcode = '';
  // String scanedc/

  @override
  void dispose() {
    super.dispose();

    controller?.dispose();
  }

  Future<void> luanchurl() async {
    final Uri url = Uri.parse(scanedcode);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "Could not launch the url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: QRView(
                  key: qrKey,
                  overlay: QrScannerOverlayShape(
                      // cutOutHeight: 12.0,
                      // cutOutWidth: 2,
                      // overlayColor: Colors.red, syrku fon onuu
                      borderColor: Colors.teal,
                      borderRadius: 10,
                      borderLength: 20,
                      borderWidth: 10,
                      cutOutSize: MediaQuery.of(context).size.width * 0.8),
                  onQRViewCreated: onQRViewCreated)),
          Expanded(
              child: Center(
            child: GestureDetector(
              onTap: luanchurl,
              child: Text(
                "ScanedCode :=> $scanedcode",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ))
        ],
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        scanedcode = scanData.code!;
      });
    });
  }
}
