import 'package:base_/providers/base_view.dart';
import 'package:base_/viewModels/home_viewModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      onModelReady: (model) {
        model.getData();
      },
      builder: (context, model, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
          body: Center(
            child: InkWell(
              onTap: () {
                model.navigationService.navigateTo('/second');
              },
              child: Text('Home Page'),
            ),
          ),
        );
      },
    );
  }
}
