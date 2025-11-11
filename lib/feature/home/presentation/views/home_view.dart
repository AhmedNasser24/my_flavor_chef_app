import 'package:chef_app/feature/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HomeAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
