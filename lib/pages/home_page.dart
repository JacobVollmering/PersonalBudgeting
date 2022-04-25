import 'package:flutter/material.dart';
import 'package:personal_budgeting/pages/create_budget_page.dart';
import 'package:personal_budgeting/pages/edit_income.dart';
import '../model/task.dart';
import '../services/my_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final Future<List<Budget>> _tasksFuture = MyController.getBudgets();
  // List<Budget>? _tasks;
  final _budgets = MyController.getBudgets();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: const TabBar(tabs: [
                  Tab(
                    text: 'Weekly',
                  ),
                  Tab(
                    text: 'Monthly',
                  ),
                  Tab(
                    text: 'Yearly',
                  )
                ]),
                title: const Text('Budgets'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (_) => const EditIncomePage()))
                            .then((result) async {});
                      },
                      icon: const Icon(Icons.edit))
                ],
              ),
              body: TabBarView(
                children: [
                  ListView.separated(
                    itemBuilder: (_, index) {
                      return _toWidget(_budgets[index]);
                    },
                    separatorBuilder: (_, __) => Divider(),
                    itemCount: _budgets.length,
                  ),
                  ListView.separated(
                    itemBuilder: (_, index) {
                      return _toWidget(_budgets[index]);
                    },
                    separatorBuilder: (_, __) => Divider(),
                    itemCount: _budgets.length,
                  ),
                  ListView.separated(
                    itemBuilder: (_, index) {
                      return _toWidget(_budgets[index]);
                    },
                    separatorBuilder: (_, __) => Divider(),
                    itemCount: _budgets.length,
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                          builder: (_) => const CreateBudgetPage()))
                      .then((result) async {});
                },
                child: const Icon(Icons.add_rounded),
              ),
            )));
  }

  Widget _toWidget(Budget b) {
    return ListTile(
      key: ValueKey(b),
      title: Text(
        b.description,
      ),
    );
  }
}
