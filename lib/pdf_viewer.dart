import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({this.file});

  final File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("File"),
      ),
      body: PDFViewerScaffold(path: file.path),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        if (file.path != null && file.path.isNotEmpty) {
          final uri = Uri.file(file.path);

        }
      }, backgroundColor: Colors.red,),
    );
  }
}
