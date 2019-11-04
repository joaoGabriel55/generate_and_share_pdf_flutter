import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Future<Document> generateDocument(PdfPageFormat format) async {
  final pdf = Document();

  pdf.addPage(Page(
      pageFormat: PdfPageFormat.a4,
      build: (Context context) {
        return Center(
          child: Text("Hello World"),
        ); // Center
      }));
  return pdf; // Page
}
