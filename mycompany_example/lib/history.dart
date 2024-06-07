import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    PdfControllerPinch pdfController;

    pdfController = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/pdf/companyhistory.pdf'),
      initialPage: 1,
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 231, 234),
      appBar: AppBar(
        title: const Text('ประวัติบริษัท'),
      ),
      body: PdfViewPinch(
        controller: pdfController,
      ),
      
    );
  }
}
