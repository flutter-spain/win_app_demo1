import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluent_ui/fluent_ui.dart';

class SegundoScreen extends StatefulWidget {
  const SegundoScreen({super.key});

  @override
  State<SegundoScreen> createState() => _SegundoScreenState();
}

class _SegundoScreenState extends State<SegundoScreen> {
  bool _checked = false;
  bool _checked2 = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        title: Text('Segundo Screen'),
      ),
      content: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 15),
              Checkbox(
                  content: const Text('Checkbox 1'),
                  checked: _checked,
                  onChanged: (v) {
                    _checked = v!;
                  }),
              const SizedBox(height: 15),
              const Text('Hello, World!'),
              const SizedBox(height: 15),
              ToggleSwitch(
                  content: const Text('Checkbox 2'),
                  checked: _checked2,
                  onChanged: (v) {
                    _checked = v!;
                  }),

              // This is a button that opens a dialog
            ],
          )),
    );
  }
}
