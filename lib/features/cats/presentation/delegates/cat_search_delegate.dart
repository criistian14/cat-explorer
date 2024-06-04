import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';

class CatSearchDelegate extends SearchDelegate<Cat> {
  CatSearchDelegate(this._context);

  final BuildContext _context;

  @override
  String? get searchFieldLabel => _context.l10n.search_label_cats;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return const [
      Text('Cat 1'),
      Text('Cat 2'),
      Text('Cat 3'),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const Text('Build Leading');
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('Build Results');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text('Build Suggestions');
  }
}
