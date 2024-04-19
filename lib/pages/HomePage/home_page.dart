import 'package:exam/headers.dart';
import 'package:exam/utils/globals_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.instance.detailPage);
          },
          icon: const Icon(Icons.add),
          label: const Text("Add"),
        ),
        body: Column(
          children: [
            ...Globals.globals.allUsers
                .map(
                  (e) => Card(
                    child: ListTile(title: Text(e.student_name ?? "Name")),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
