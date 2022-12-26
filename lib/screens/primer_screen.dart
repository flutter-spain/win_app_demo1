import 'package:fluent_ui/fluent_ui.dart';

class PrimerScreen extends StatefulWidget {
  const PrimerScreen({super.key});

  @override
  State<PrimerScreen> createState() => _PrimerScreenState();
}

class _PrimerScreenState extends State<PrimerScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: const PageHeader(
        title: const Text('Primer Screen'),
      ),
      content: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
