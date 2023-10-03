// // import 'package:flutter/material.dart';
// // import 'package:qr_code_scanner/qr_code_scanner.dart';

// // class QRCodeScannerScreen extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() => _QRCodeScannerScreenState();
// // }

// // class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
// //   final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
// //   QRViewController? _controller;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('QR Code Scanner'),
// //       ),
// //       body: QRView(
// //         key: _qrKey,
// //         overlay: QrScannerOverlayShape(
// //             borderColor: Colors.teal,
// //             borderRadius: 10,
// //             borderLength: 20,
// //             borderWidth: 10,
// //             cutOutSize: MediaQuery.of(context).size.width * 0.8),
// //         onQRViewCreated: (controller) {
// //           setState(() {
// //             _controller = controller;
// //             // _controller!.onQRViewInitialized.listen((_) {
// //             // QR code scanning initialized.
// //             // });
// //           });
// //         },
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     _controller?.dispose();
// //     super.dispose();
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'package:url_launcher/url_launcher.dart';

// class QRCodeScannerScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _QRCodeScannerScreenState();
// }

// class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
//   final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? _controller;
//   String url = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Code Scanner'),
//       ),
//       body: QRView(
//         key: _qrKey,
//         onQRViewCreated: (controller) {
//           setState(() {
//             _controller = controller;
//             _controller!.onQRViewInitialized.listen((event) {
//               setState(() {
//                 url = event.code!;
//               });
//               // QR code scanning initialized.
//             });

//             _controller!.onQRViewScanned.listen((barcode) async {
//               // Check if the scanned QR code is a valid URL.
//               if (Uri.parse(barcode.code).isAbsolute) {
//                 // Open the URL within the app using the url_launcher package.
//                 if (await canLaunch(barcode.code)) {
//                   await launch(barcode.code);
//                 } else {
//                   // Handle the case where the URL can't be launched.
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       title: Text('Error'),
//                       content: Text('Unable to open the URL.'),
//                       actions: <Widget>[
//                         TextButton(
//                           onPressed: () => Navigator.of(context).pop(),
//                           child: Text('OK'),
//                         ),
//                       ],
//                     ),
//                   );
//                 }
//               }
//             });
//           });
//         },
//       ),
//     );
//   }
// }
