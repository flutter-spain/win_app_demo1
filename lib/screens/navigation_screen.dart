import 'package:fluent_ui/fluent_ui.dart';
import 'package:win_app_demo1/screens/primer_screen.dart';
import 'package:win_app_demo1/screens/segundo_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        leading: Center(
          child: FlutterLogo(size: 20),
        ),
      ),
      pane: NavigationPane(
          header: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: DefaultTextStyle(
                style: FluentTheme.of(context).typography.title!,
                child: const Text('Flutter Desktop')),
          ),
          items: [
            PaneItem(
                icon: const Icon(FluentIcons.home),
                title: const Text('screen 1'),
                body: const PrimerScreen()),
            PaneItem(
                icon: const Icon(FluentIcons.d365_customer_voice_app),
                title: const Text('screen 2'),
                body: const SegundoScreen()),
          ],
          selected: _currentIndex,
          onChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
