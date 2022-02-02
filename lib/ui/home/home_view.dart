import 'package:agenda_boa_test/ui/counter_1/counter_1_view.dart';
import 'package:agenda_boa_test/ui/counter_2/counter_2_view.dart';
import 'package:agenda_boa_test/ui/counter_3/counter_3_view.dart';
import 'package:agenda_boa_test/ui/shared/styles.dart';
import 'package:agenda_boa_test/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: kcApp4Color,
            actions: [
              InkWell(
                onTap: () => model.resetCounter(),
                child: Row(
                  children: [
                    Icon(Icons.clear),
                    horizontalSpaceSmall,
                    Text('Reset Counter'),
                    horizontalSpaceSmall,
                  ],
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: getViewForIndex(model.currentIndex),
          ),
          bottomNavigationBar: _bottomNavigation(model),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget _bottomNavigation(HomeViewModel model) {
    List<Widget> list = [];

    for (var i = 1; i <= model.maxCounter; i++) {
      list.add(_bottomNavigationItem(model, i));
    }
    return Container(
      color: kcApp4Color,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: list,
      ),
    );
  }

  Widget _bottomNavigationItem(HomeViewModel model, int index) {
    return Expanded(
      child: TextButton(
        onPressed: () => model.updateCurrentIndex(index),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Counter $index',
            style: TextStyle(
              color:
                  model.currentIndex == index ? kcWhiteColor : kcGreyMidColor,
              fontSize: model.currentIndex == index ? 18 : 16,
            ),
            maxLines: 1,
          ),
        ),
      ),
    );
  }

  Widget getViewForIndex(int currentIndex) {
    switch (currentIndex) {
      case 1:
        return Counter1View();
      case 2:
        return Counter2View();
      case 3:
        return Counter3View();
      default:
        return Container();
    }
  }
}
