import 'package:cat_explorer/config/app_assets.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

class BreedSearchDelegate extends SearchDelegate<Breed?> {
  BreedSearchDelegate(this._context);

  final BuildContext _context;

  @override
  String? get searchFieldLabel => _context.l10n.search_label_cats;

  @override
  List<Widget>? buildActions(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;

    return [
      GestureDetector(
        onTap: () => close(context, null),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w(context),
          ),
          child: Text(
            l10n.cancel,
            style: textTheme.headlineSmall,
          ),
        ),
      ),
    ];
  }

  @override
  double? get leadingWidth => 0;

  @override
  Widget? buildLeading(BuildContext context) {
    return const SizedBox.shrink();
  }

  @override
  Widget buildResults(BuildContext context) {
    context.read<SearchBloc>().add(SearchEvent.breedsFounded(query));

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        final l10n = context.l10n;

        final breeds = state.breedsFounded;

        if (breeds.isEmpty) {
          return Center(
            child: Text(l10n.no_matching_data),
          );
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 13 / 19,
            mainAxisSpacing: 2.h(context),
            crossAxisSpacing: 4.w(context),
          ),
          itemCount: breeds.length,
          padding: EdgeInsets.symmetric(
            horizontal: 5.w(context),
            vertical: 2.h(context),
          ),
          itemBuilder: (context, index) => BreedCard(
            key: Key(breeds[index].name.toString()),
            isLoading: true,
            breed: breeds[index],
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: SizedBox(
          height: 30.h(context),
          child: RiveAnimation.asset(
            AppAssets.animationSearch,
          ),
        ),
      );
    }

    context.read<SearchBloc>().add(SearchEvent.suggestionChanged(query));

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        final suggestions = state.breedSuggestions;

        return ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final suggestion = suggestions[index];

            return ListTile(
              onTap: () {
                query = suggestion.name;
                showResults(context);
              },
              leading: Icon(
                suggestion.isFromPastSearches
                    ? CupertinoIcons.time
                    : CupertinoIcons.search,
              ),
              title: Text(
                suggestion.name,
              ),
              trailing: const Icon(CupertinoIcons.arrow_up_left),
            );
          },
        );
      },
    );
  }
}
