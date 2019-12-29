import 'package:flutter/widgets.dart';

abstract class _HomeRepository {}

class HomeRepository implements _HomeRepository {
  final BuildContext context;

  const HomeRepository(this.context);
}
